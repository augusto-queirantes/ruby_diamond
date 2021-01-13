# frozen_string_literal: true

class Letter
  def initialize(input)
    @first_letter_previous_ascii_code = 64
    @input_ascii_code = input.ord
    @should_change_to_next_letter = true
  end

  def next
    if @should_change_to_next_letter
      @first_letter_previous_ascii_code += 1
    else
      @first_letter_previous_ascii_code -= 1
    end

    @should_change_to_next_letter = false if first_letter_previous_ascii_code == input_ascii_code

    first_letter_previous_ascii_code.chr
  end

  private

  attr_accessor :first_letter_previous_ascii_code, :should_change_to_next_letter
  attr_reader :input_ascii_code
end
