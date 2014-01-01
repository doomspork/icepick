require 'icepick/version'

require 'pry'
require 'pry-doc'
require 'pry-stack_explorer'
require 'pry-debugger'
require 'awesome_print'
require 'readline'

module Icepick

  # AwesomePrint configuration options
  AWESOME_OPTS = {
    indent:     2,
    sort_keys:  true
  }

  # Public: Prohibit the instantiation of Icepick
  #
  # Raises NotImplementedError
  def initialize
    raise NotImplementedError
  end

  # Public: Setup and initialize Icepick
  #
  # options - Options to use in setup (defaults: {})
  #   * name: A name to use for the prompt
  #
  # Returns nothing
  def self.initialize!(options = {})
    silence_warnings do
      # Set the prompt name, for the Railtie this is the application name
      Pry.config.prompt_name = options[:name] || 'icepick'

      # Use awesome_print for Pry output
      Pry.config.print = ->(output, value) do
        pretty = value.ai(AWESOME_OPTS)
        Pry::Helpers::BaseHelpers.stagger_output("=> #{pretty}", output)
      end

      if defined?(PryDebugger) || defined?(PryByebug)
        Pry.commands.alias_command 'c', 'continue'
        Pry.commands.alias_command 's', 'step'
        Pry.commands.alias_command 'n', 'next'
        Pry.commands.alias_command 'f', 'finish'
      end
    end
  end

  private

  def self.silence_warnings
    old_verbose, $VERBOSE = $VERBOSE, nil
    yield
  ensure
    $VERBOSE = old_verbose
  end

end

if defined?(Rails)
  require 'pry-rails'
  require 'icepick/railtie'
else
  Icepick.initialize!
end
