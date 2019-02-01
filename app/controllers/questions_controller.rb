class QuestionsController < ApplicationController
  def index
<<<<<<< HEAD
    @questions = Question.order(:created_at)
=======
    @questions = Question.all
>>>>>>> origin/master
  end
end
