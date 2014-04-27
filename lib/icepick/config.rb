module Icepick
  class Config
    # Separator for the prompt
    attr_accessor :separator 

    # The mustache compatiable layouts for Pry prompts
    attr_accessor :main_layout, :wait_layout

    # Public: Create a new instance of the config with defaults
    #
    # Returns a new instance
    def initialize
      self.separator   = '>'.bold
      self.main_layout = '{line_num}. {context.colorize(:cyan)} {separator} '
      self.wait_layout = '{spaces} {separator} '
    end
  end
end
