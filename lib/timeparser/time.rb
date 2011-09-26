module Timeparser
  class Time
    def initialize(minutes)
      @minutes = minutes.to_i
    end

    def to_i
      minutes
    end

    def hours(round = nil)
      case round
        when :up
          (minutes.to_f / 60.0).ceil
        else
          (minutes.to_f / 60.0).to_i
      end
    end

    def minutes
      @minutes
    end
  end
end