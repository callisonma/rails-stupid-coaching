class QuestionsController < ApplicationController
  def answer
    query = params[:query]
     if query.downcase == "i am going to work right now!"
    @answer = ''
    elsif query.end_with?("?")
    @answer = "Silly question, get dressed and go to work!"
    else
    @answer = "I don't care, get dressed and go to work!"
    end
  end

def coach_answer_enhanced(query)
  answer = coach_answer(query)
  if answer != ""
    if query.upcase == query
      "I can feel your motivation! #{answer}"
    else
      @answer
    end
  else
    ""
  end
end

  def ask
  end
end
