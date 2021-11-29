# frozen_string_literal: true

# Controller class
class PalindromesController < ApplicationController
  def input; end

  def view
    @input = validate_input(params[:n])
    @numbers = (0..@input).select { |i| palindrome?(i * i) }
    @result = @numbers.size
  rescue StandardError => e
    @error = case e.class.to_s
             when 'ArgumentError' then 'Incorrect input. Do not use letters!'
             else e
             end
  end

  private

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def validate_input(input)
    raise 'You have to enter something!' if input.empty?
    Integer(input)
  end
end
