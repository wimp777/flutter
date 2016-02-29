class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
    @newPost = Post.new
     @tofollow = User.all.first(5)
  end

  def profile
    # grab the username from the url as :id
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      #redirect to 404 error for now
      redirect_to root_path, :notice=> "User not found"
    end
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
    
    @tofollow = User.all.first(5)
  end

  def explore
    @posts = Post.all
    @newPost = Post.new
    @tofollow = User.all.first(5)
  end
end
