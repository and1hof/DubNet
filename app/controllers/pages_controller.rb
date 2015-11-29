class PagesController < ApplicationController
  def feed
    @post = Post.new
    @posts = Post.paginate(:page => params[:page], :per_page => 10).order('updated_at DESC')
  end

  def profile
    @myPosts = Post.all.where("user_id = ?", User.find_by_username(params[:username]).id).order('updated_at DESC')
    @posts = @myPosts.paginate(:page => params[:page], :per_page => 6)
  end

  def home
  end
  
  def post 
  @post = Post.find_by_id(params[:id])
  @comments = Comment.all.where("post_id = ?", @post.id)
  @comment = Comment.new
  end
end
