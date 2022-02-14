class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].include?("?")
      @question = params[:question]
      @answer = "silly question, get back to work!"
    elsif params[:question] == "i am going to work today"
      @answer = "great!"
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
