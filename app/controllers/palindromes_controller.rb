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
    number.to_s == number.to_s.reverse
  end
end
