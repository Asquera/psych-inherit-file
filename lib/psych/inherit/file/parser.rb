require 'ostruct'

module Psych
  module Inherit
    module File
      class Parser
        def load_file(file)
          parse_file(file).to_ruby
        end

        def parse_file(file)
          parse(::File.read(file))
        rescue StandardError => e
          # STDOUT.puts "Error while reading file #{file}: #{e}"
          raise e
        end

        def parse(content)
          parser = Psych::Parser.new(File::Handler.new(self))
          parser.parse(content).handler.document
        end
      end
    end
  end
end
