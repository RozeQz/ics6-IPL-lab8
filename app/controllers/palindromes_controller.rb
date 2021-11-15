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
    n = Integer(params[:n])
    @numbers = (0..n).select{ |i| palindrome?(i*i)}

  rescue ArgumentError
    @error = 'Incorrect input'
  
  rescue TypeError
    @error = 'You have to enter something'  

  end
end
