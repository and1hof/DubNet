class PagesController < ApplicationController
  def feed
<<<<<<< HEAD
  end

  def home
  end

  def profile
=======
    @post = Post.new
    @posts = Post.all
  end

  def profile
  end

  def home
>>>>>>> 5e72d4cf8f03d7bd0d6dcaa4ef76f3799bce48bf
  end
end
