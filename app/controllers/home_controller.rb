class HomeController < ApplicationController

  def index
    if request.post?
      @user = User.new params[:user]
      if @user.save
        sign_in(:user, @user)
        flash[:notice] = "Successfully created"
        redirect_to root_path
      else
        render :index
      end
    end
  else
    @user = User.new
  end

  def home
  end
  
end
