class HomeController < ApplicationController
  def index
    @world = 'world'
    if(current_user)
      redirect_to action: "dashboard"
    end
  end
  def register
  end

  def login
  end

  def dashboard
    @posts = Post.all    
  end
end
