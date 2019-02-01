class GreetsController < ApplicationController
  PER=8

  def hello
    @members = Member.page(params[:page]).per(PER)
t   end


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
