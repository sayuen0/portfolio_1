class MembersController < ApplicationController
  PER = 9
  def index
    # @members = Member.order(:created_at).page(params[:page]).per(PER)
    @members = Member.order(:created_at => :desc).page(params[:page]).per(PER)
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member= Member.find(params[:id])
  end

  def new
    @member= Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to action: :index
      flash[:notice] = 'メンバーの新規登録に成功しました。'
    else
      render :new
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
    @member= Member.find(params[:id])
    @member.assign_attributes(member_params)
    
    if @member.save
      redirect_to :member
      
      flash[:notice] = 'メンバー情報の更新に成功しました。'
    else
      
      @member.attributes  = member_params
      render :edit
      flash[:notice]= 'メンバー情報の更新に失敗しました。'
    end
  end


  private
    def member_params
      params.require(:member).permit(:name, :introduction,:birthday,
                                     :password, :password_confirmation)
    end

end
