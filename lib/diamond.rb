class Diamond
  def build(input)
    input_ascii_code = input.ord
    input_ascii_index = input_ascii_code - first_letter_ascii_code
    board_dimension = calculate_board_dimension(input_ascii_index)
    current_letter_ascii_code = first_letter_ascii_code
    still_different_than_input = true
    response = ""

    board_dimension.times do |index|
      response += "#{build_line(current_letter_ascii_code, input_ascii_code)}\n"

      if still_different_than_input
        current_letter_ascii_code += 1
      else
        current_letter_ascii_code -= 1
      end

      still_different_than_input = false if current_letter_ascii_code == input_ascii_code
    end

    response
  end

  private

  def build_line(current_letter_ascii_code, input_ascii_code)
    extremities_underlines = build_extremities_underlines(current_letter_ascii_code, input_ascii_code)
    letter_content = build_letter(current_letter_ascii_code, input_ascii_code)

    "#{build_underlines(extremities_underlines)}#{letter_content}#{build_underlines(extremities_underlines)}"
  end

  def build_extremities_underlines(current_letter_ascii_code, input_ascii_code)
    input_ascii_code - current_letter_ascii_code
  end

  def build_letter(current_letter_ascii_code, input_ascii_code)
    inside_underlines = build_inside_underlines(current_letter_ascii_code - first_letter_ascii_code)

    if current_letter_ascii_code == 65
      current_letter_ascii_code.chr
    else
      "#{current_letter_ascii_code.chr}#{build_underlines(inside_underlines)}#{current_letter_ascii_code.chr}"
    end
  end

  def calculate_board_dimension(input_ascii_index)
    return 1 if input_ascii_index.zero?
    return (input_ascii_index + (input_ascii_index + 1))
  end

  def build_inside_underlines(number)
    return 0 if number.zero?
    return (number + (number - 1))
  end

  def first_letter_ascii_code
    "A".ord
  end

  def last_letter_ascii_code
    "Z".ord
  end

  def build_underlines(underlines_number)
    "_" * underlines_number
  end
end
