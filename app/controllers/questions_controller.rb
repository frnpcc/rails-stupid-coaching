class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = case
              when @question == "I am going to work" then "Great!"
              when @question.end_with?("?") then "Silly question, get dressed and go to work!"
              else "I don't care, get dressed and go to work!"
              end
  end
end
