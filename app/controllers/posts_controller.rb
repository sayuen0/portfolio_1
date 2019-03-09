class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


  def new
    @post  = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end


  def create
    @post = Post.find(params[:id])
    post.update_attributes(post_params)
    if @post.save
      redirect_to @post
      flash[:notice] ="新規記事を作成しました"
    else
      render :new
      flash[:notice] ="記事の作成に失敗しました"
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    if @post.save
      redirect_to action: :show
      flash[:notice] ="記事の編集に成功しました"
    else
      render :show
      flash[:notice] ="記事の編集に失敗しました"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :posts
    flash[:notice] ="記事を削除しました"

  end



  private def post_params
    params.require(:post).permit(:title, :genre, :body)
  end
end
