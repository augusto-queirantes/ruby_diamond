class Line
  def initialize(input_letter, current_letter)
    @input_letter_ascii_code = input_letter.ord
    @current_letter_ascii_code = current_letter.ord
    @first_letter_ascii_code = "A".ord
  end

  def build
    "#{outside_underlines}#{inside_content}#{outside_underlines}\n"
  end

  private

  attr_reader :input_letter_ascii_code, :current_letter_ascii_code, :first_letter_ascii_code

  def outside_underlines
    number_of_underlines = input_letter_ascii_code - current_letter_ascii_code

    build_underlines(number_of_underlines)
  end

  def inside_content
    return current_letter_ascii_code.chr if first_letter?

    current_letter = current_letter_ascii_code.chr
    inside_underlines = build_underlines(number_of_inside_underlines)

    "#{current_letter}#{inside_underlines}#{current_letter}"
  end

  def first_letter?
    current_letter_ascii_code == 65
  end

  def number_of_inside_underlines
    letter_position = current_letter_ascii_code - first_letter_ascii_code

    return 0 if letter_position.zero?
    return (letter_position + (letter_position - 1))
  end

  def build_underlines(number_of_underlines)
    "_" * number_of_underlines
  end
end
