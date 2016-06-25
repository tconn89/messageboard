module ApplicationHelper
  def reply_helper post
    if(@load_icon)
      render partial: 'layouts/reply_icon', locals: {post: post}
    end
  end
end
