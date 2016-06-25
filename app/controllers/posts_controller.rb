class PostsController < ApplicationController
  def new
  end

  def create
    @post = current_user.posts.new(:title => params[:post][:title], :message => params[:post][:message])
    unless @post.save
      flash[:error] = @post.errors.full_messages
    end
    redirect_to :controller => 'home', :action => 'dashboard'
  end

  def show
    @load_icon = false
    @post = Post.find(params[:id])
  end

  def reply
    @load_icon = false
    @post = Post.find(params[:id])
    @reply_area = true
    render '/posts/show'
  end
end
