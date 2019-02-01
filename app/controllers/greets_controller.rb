class GreetsController < ApplicationController

  def hello
    @members = Member.order(created_at: :desc).limit(3)
  end


  def members
  end

  def contact
  end

  def company
  end

  def form
  end
end
