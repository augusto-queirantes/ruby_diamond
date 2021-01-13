# frozen_string_literal: true

class Line
  class << self
    def build(input, current_letter)
      @input_ascii_code = input.ord
      @current_letter_ascii_code = current_letter.ord

      "#{outside_underlines}#{inside_content}#{outside_underlines}\n"
    end

    private

    def outside_underlines
      number_of_underlines = @input_ascii_code - @current_letter_ascii_code

      build_underlines(number_of_underlines)
    end

    def inside_content
      return @current_letter_ascii_code.chr if first_letter?

      current_letter = @current_letter_ascii_code.chr
      inside_underlines = build_underlines(number_of_inside_underlines)

      "#{current_letter}#{inside_underlines}#{current_letter}"
    end

    def first_letter?
      @current_letter_ascii_code == 65
    end

    def number_of_inside_underlines
      letter_position = @current_letter_ascii_code - first_letter_ascii_code

      return 0 if letter_position.zero?

      (letter_position + (letter_position - 1))
    end

    def first_letter_ascii_code
      65
    end

    def build_underlines(number_of_underlines)
      '_' * number_of_underlines
    end
  end
end
