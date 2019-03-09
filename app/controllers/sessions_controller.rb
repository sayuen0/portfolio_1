class SessionsController < ApplicationController
  def create
    member  = Member.find_by(email: params[:email])
    if member && member.authenticate(params[:password])
      session[:member_id]= member.id
      flash[:notice] ="ログインに成功しました"
    else
      flash[:notice] ="名前とパスワードが一致しません。"
    end
    redirect_to :root
  end

  def destroy
    session.delete(:member_id)
    redirect_to :root
    flash[:notice]= "ログアウトしました"
  end
end
