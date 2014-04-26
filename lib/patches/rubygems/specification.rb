# This is used to supress warnings about Unresolved specs during Gem::Specification.reset
module Gem
  class Specification
    class << self
      alias original_reset reset
      def reset
        original_stderr = $stderr
        begin
          null_file = File.open(File::NULL,'w')
          $stderr = null_file
          original_reset
        rescue
          original_reset
        ensure
          $stderr = original_stderr
          null_file.close
        end 
      end
    end
  end
end
