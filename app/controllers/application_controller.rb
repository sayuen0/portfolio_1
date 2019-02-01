class ApplicationController < ActionController::Base

  # 現在のメンバーがいれば返す
  private def current_member
    Member.find_by(id: session[:member_id]) if session[:member_id]
  end
  helper_method :current_member
end
