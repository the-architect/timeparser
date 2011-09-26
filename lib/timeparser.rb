require "timeparser/version"
require 'polyglot'
require 'treetop'
Treetop.load File.join(File.dirname(__FILE__), 'timeparser/timeparsing.treetop')

module Timeparser
  class Parser
    def parser
      @parser ||= TimeparsingParser.new
    end

    def parse(string)
      parser.parse(string).value
    end
  end
end
