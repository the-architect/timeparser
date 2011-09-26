require 'polyglot'
require 'treetop'
Treetop.load File.join(File.dirname(__FILE__), 'timeparsing.treetop')

module Timeparser
  class Parser
    def parser
      @parser ||= TimeparsingParser.new
    end

    def parse(string)
      if result = parser.parse(string.strip)
        Time.new(result.value)
      else
        Time.new(0)
      end
    end
  end
end
