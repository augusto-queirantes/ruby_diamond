# frozen_string_literal: true

class InputValidator
  class << self
    def validate!(input)
      @input = input

      raise ArgumentError, "Invalid input #{input}" if invalid_input?
    end

    private

    attr_reader :input

    def invalid_input?
      empty_string? || valid_letter?
    end

    def valid_letter?
      !(65..90).cover?(input&.ord)
    end

    def empty_string?
      input == ''
    end
  end
end
