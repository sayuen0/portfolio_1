class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
  end

  def new
  end

  def create
    member = Member.new(member_params)
    if member.save
      redirect_to action: :index
      flash[:notion] = 'メンバーの新規登録に成功しました。'
    else
      redirect_to action: :new
      flash[:notion]= '新規登録に失敗しました。'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    name = @member.name
    @member.destroy
    redirect_to :members
    flash[:notion] ="メンバー: #{name}を削除しました"
  end

  def update
    member= Member.find(params[:id])
    member.assign_attributes(member_params)
    if member.save
      redirect_to :member
      flash[:notion] = 'メンバー情報の更新に成功しました。'
    else
      render :edit
      flash[:notion]= '新規登録に失敗しました。'
    end
  end


  private
    def member_params
      params.permit(:name, :introduction)
    end

end
