class Letter
  def initialize(input_letter)
    @letter_ascii_code = 64
    @input_letter_ascii_code = input_letter.ord
    @should_change_to_next_letter = true
  end

  def next
    if @should_change_to_next_letter
      @letter_ascii_code += 1
    else
      @letter_ascii_code -= 1
    end

    @should_change_to_next_letter = false if letter_ascii_code == input_letter_ascii_code

    letter_ascii_code.chr
  end

  private

  attr_accessor :letter_ascii_code, :should_change_to_next_letter
  attr_reader :input_letter_ascii_code
end
