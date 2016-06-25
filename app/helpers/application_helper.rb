module ApplicationHelper
  def reply_helper post
    if(@load_icon)
      render partial: 'layouts/reply_icon', locals: {post: post}
    end
  end
  # A switch for toggling a text area
  def reply_switch post
    if(@reply_area)
      render partial: 'posts/reply_area', locals: {post: post}
    else
      render partial: 'posts/reply_button', locals: {post: post}
    end
  end
end
