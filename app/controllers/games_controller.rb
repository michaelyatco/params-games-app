class GamesController < ApplicationController

  def name_game_method
    @name = params[:name].upcase
    if @name.start_with?("A")
      @motto = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "name_game.html.erb"
  end

  def guess_a_number_method
    @guess = params[:this_is_the_wildcard].to_i #because all parameters are read as strings
    @answer = 36
      if @guess > @answer
        @message = "Your guess is too high"
      elsif @guess < @answer
        @message = "Your guess is too low"
      else
        @message = "Your answer is correct"
      end
    render "numbers.html.erb"
  end

  def guess_a_number_form_method
    render "number_form.html.erb"
  end

  def guess_a_number_result_method
    @guess = params[:form_message].to_i
    @answer = 36
      if @guess > @answer
        @message = "Your guess is too high"
      elsif @guess < @answer
        @message = "Your guess is too low"
      else
        @message = "Your answer is correct"
      end
    render "guess_a_number_result.html.erb"
  end

  def counter_method
    @number_of_views = params[:visit].to_i || 1
    render "counter_view.html.erb"
  end

end
