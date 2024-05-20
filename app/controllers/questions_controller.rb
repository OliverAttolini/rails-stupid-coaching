class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question].upcase
    if @question.to_s == "HELLO"
      @answer = "Hello"
    elsif @question.to_s == "WHAT TIME IS IT?"
      @answer = "#{Time.now}"
    else
      @answer = "I don't know!"
    end
	end
end
