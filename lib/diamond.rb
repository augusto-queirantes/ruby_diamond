# frozen_string_literal: true

class Diamond
  def build(input)
    InputValidator.validate!(input)

    letter_instance = Letter.new(input)
    board_dimension = Board.calculate_dimension(input)
    response = ''

    board_dimension.times do |_index|
      response += Line.build(input, letter_instance.next)
    end

    response
  end
end
