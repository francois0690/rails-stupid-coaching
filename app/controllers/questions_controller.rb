class QuestionsController < ApplicationController
  @question = ""
  @answer = ""

  def ask
  end

  def answer
    if params[:question]
      @question = params[:question]
      if @question == 'I am going to work'
        @answer = 'Great!'
      elsif @question.include?('?')
        # p "la question inclue un point d'interrogation"
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
