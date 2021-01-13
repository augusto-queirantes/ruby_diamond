# frozen_string_literal: true

class Diamond
  def build(input)
    letter_instance = Letter.new(input)
    board_dimension = Board.new(input).calculate_dimension
    response = ''

    board_dimension.times do |_index|
      line_instance = Line.new(input, letter_instance.next)
      response += line_instance.build
    end

    response
  end
end
