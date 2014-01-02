require 'colorize'

module Icepick
  class Prompt

    class << self
      # Pry prompt's target object
      attr_accessor :target

      # The nesting level of the current Pry
      attr_accessor :level

      # An instance of the current Pry session
      attr_accessor :pry

      # Our configuration instance
      attr_accessor :config
    end

    # Initialize the configuration object
    self.config = Icepick::Config.new

    # Public: Piece together the main prompt 
    #
    # Returns a Proc
    def self.main_prompt
      prompt_proc(config.main_layout)
    end

    # Public: Build out the wait prompt
    #
    # Returns a Proc
    def self.wait_prompt
      prompt_proc(config.wait_layout)
    end

    protected 

    # Internal: Build a prompt proc for a given layout
    #
    # layout - The layout to use in the proc
    #
    # Returns a Proc
    def self.prompt_proc(layout)
      proc do |target, level, pry|
        self.target, self.level, self.pry = target, level, pry 
        interpolate_prompt(layout)
      end
    end

    # Internal: A helper to handle the layout's config
    #
    # layout - the layout String
    #
    # Returns a String with interoplated values
    def self.interpolate_prompt(layout)
      code = layout.gsub(/{/, '#{self.')
      eval(%Q{"#{code}"})
    end

    # Internal: A helper to retrieve the expected separator with or without formatting
    #
    # Returns the separator as a String
    def self.separator
      separator = config.separator
      config.formatted ? separator.bold : separator
    end

    # Internal: Return the name with appropriate formatting 
    #
    # Returns a String
    def self.name
      config.formatted? ? config.name.underline : config.name
    end

    # Internal: Helper for line number
    #
    # Returns the line number as String
    def self.line_num
      line = self.pry.input_array.size.to_s
      config.formatted? ? line.bold : line
    end

    # Internal: Get the name of Pry's current context or target
    #
    # Returns a String
    def self.context
      unless (context = Pry.view_clip(target)) == 'main'
        str = "#{context.gsub(/::/, '/')}"
        config.formatted? ? str.colorize(:blue) : str
      else
        ''
      end
    end

    # Internal: Get a String of spaces matching the main prompt 
    # in length
    #
    # Returns a String of spaces
    def self.spaces
      ' ' * prompt_size
    end

    # Internal: Produces a String of dots the lenght of the main prompt
    #
    # Returns a String of spaces
    def self.dots
      '.' * prompt_size
    end

    # Intennal: Determines the length of the formatless main prompt
    #
    # Returns an Integer
    def self.prompt_size
      old_setting      = config.formatted?
      config.formatted = false
      prompt           = main_prompt.call(self.target, self.level, self.pry)
      config.formatted = old_setting
      index            = prompt.index(config.separator) - 2
      prompt[0..index].length
    end

  end
end
