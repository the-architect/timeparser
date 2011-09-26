require "timeparser/version"
require "timeparser/parser"
require "timeparser/time"

module Timeparser
  class << self
    def parser
      @parser ||= Parser.new
    end

    def parse(string)
      parser.parse string
    end
  end
end
