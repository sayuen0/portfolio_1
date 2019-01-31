class GreetsController < ApplicationController

  def hello
    @members = Member.order(:id).limit(3)
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
