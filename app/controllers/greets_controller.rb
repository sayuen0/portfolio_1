class GreetsController < ApplicationController
  PER=8

  def hello
<<<<<<< HEAD
    @members = Member.page(params[:page]).per(PER)
=======
    @members = Member.order(:id).limit(3)
>>>>>>> origin/master
  end


  def members
  end
  def news
  end

  def contact
  end

  def company
  end

  def form
  end
end
