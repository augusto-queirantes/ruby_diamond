# frozen_string_literal: true

require_relative './lib/line'
require_relative './lib/letter'
require_relative './lib/board'
require_relative './lib/input_validator'

input = ARGV[0]

InputValidator.validate!(input)

letter_instance = Letter.new(input)
board_dimension = Board.calculate_dimension(input)

board_dimension.times do |_index|
  puts Line.build(input, letter_instance.next)
end
