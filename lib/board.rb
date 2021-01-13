# frozen_string_literal: true

class Board
  def initialize(input_letter)
    @input_letter = input_letter
  end

  def calculate_dimension
    input_ascii_index = input_letter.ord - 'A'.ord

    return 1 if input_ascii_index.zero?

    input_ascii_index + (input_ascii_index + 1)
  end

  private

  attr_reader :input_letter
end
