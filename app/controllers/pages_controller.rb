class PagesController < ApplicationController
  def feed
    @post = Post.new
    @posts = Post.all
  end

  def profile
  end

  def home
  end
end
