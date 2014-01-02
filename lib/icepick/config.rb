module Icepick
  class Config
    # Separator for the prompt
    attr_accessor :separator 

    # Whether or not to use colors and formatting
    attr_accessor :formatted
    alias :formatted? :formatted

    # The mustache compatiable layouts for Pry prompts
    attr_accessor :main_layout, :wait_layout

    # The prompt name
    attr_accessor :name

    # Public: Create a new instance of the config with defaults
    #
    # Returns a new instance
    def initialize
      self.separator   = '>'
      self.formatted   = true
      self.main_layout = '{line_num}. {name}@{context} {separator} '
      self.wait_layout = '{spaces} {separator} '
      self.name        = 'Icepick'
    end
  end
end
