class PostsController < ApplicationController
  def new
  end

  def create
    @post = current_user.posts.new(:title => '', :message => params[:post][:message])
    unless @post.save
      flash[:error] = @post.errors.full_messages
    end
    redirect_to :controller => 'home', :action => 'dashboard'
  end

  def show
    @post = Post.find(params[:id])
  end

  def reply
    @post = Post.find(params[:id])
  end
end
