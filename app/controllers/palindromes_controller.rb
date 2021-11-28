# frozen_string_literal: true

# Controller class
class PalindromesController < ApplicationController
  def input; end

  def view
    raise StandardError if params[:n].length.zero?

    @input = Integer(params[:n])
    @numbers = (0..@input).select { |i| palindrome?(i * i) }
    @result = @numbers.size
  rescue ArgumentError
    @error = 'Incorrect input'
  rescue StandardError
    @error = 'You have to enter something'
  end

  private

  def palindrome?(number)
    temp = number
    rev_number = 0
    loop do
      rev_number *= 10
      rev_number += temp % 10
      temp /= 10
      break if temp.zero?
    end
    number == rev_number
  end
end
