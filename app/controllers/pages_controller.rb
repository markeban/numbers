class PagesController < ApplicationController

  def home
   @fortune = ["good", "bad", "horrible" ,"wonderful", "the uber best day ever"].sample
   @views = 0
   @views =+1

  end

  def lottery
    @lotto_number = rand(1000000)
  end

  def bottles
  @bottle_phrase = []

  number = 99
    95.times do
      @bottle_phrase << "<li> #{number} bottles of beer on the wall. #{number} bottles of beer. Take one down, pass it around, #{number -1} bottles of beer on the wall.</li> "
      number -=1
    end
  end

  def recipe_list
    
  end

  def guess_result
    @number_guess = params[:message].to_i
    @response = ""
    answer = 4

    if @number_guess < answer
      @response = "You're too low. Guess a higher number."

    elsif @number_guess > answer
      @response = "You're too high. Guess a lower number."

    elsif @number_guess == answer
      @response = "You win!"
    end

  end

  def guess_form
  end


end
