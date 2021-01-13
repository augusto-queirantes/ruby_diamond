# frozen_string_literal: true

class Board
  def self.calculate_dimension(input)
    input_ascii_index = input.ord - 'A'.ord

    return 1 if input_ascii_index.zero?

    input_ascii_index + (input_ascii_index + 1)
  end
end
