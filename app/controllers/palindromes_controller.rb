# frozen_string_literal: true

# Controller class
class PalindromesController < ApplicationController
  def input; end

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

  def view
    puts 'Enter N:'
    # n = params[:n].to_i
    n = Integer(params[:n])
    number_array = []
    (n + 1).times do |i|
      number_array << i if palindrome?(i * i)
    end

    @numbers = number_array

  rescue ArgumentError
    @error = 'Incorrect imput'

  end
end
