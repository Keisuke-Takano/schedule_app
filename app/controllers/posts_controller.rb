class PostsController < ApplicationController
  protect_from_forgery :except => [:destroy]
    
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
      @posts = Post.new(title: params[:title],start_date: params[:start_date],finish_date: params[:finish_date],memo: params[:memo],check: params[:check])
      if @posts.save
        flash[:notice] = "登録しました"
        redirect_to("/")
      else
        flash.now[:notice] = "未入力があります"
        render("new")
      end
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(title: params[:title],start_date: params[:start_date],finish_date: params[:finish_date],memo: params[:memo],check: params[:check])
        flash[:notice] = "更新しました"
        redirect_to("/")
    else 
      flash.now[:notice] = "未入力があります"
      render("edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      flash[:notice] = "削除しました"
      redirect_to("/") 
    end
  end
end
