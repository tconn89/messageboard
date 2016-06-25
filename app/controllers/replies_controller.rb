class RepliesController < ApplicationController
  def new
  end

  def create
    post_id = params[:id]
    @reply = current_user.replies.new(:message => params[:reply][:message], :post_id => post_id )
    unless @reply.save
      flash[:error] = @post.errors.full_messages
    end
    redirect_to "/posts/#{post_id}/show"
  end

  def show
  end
end
