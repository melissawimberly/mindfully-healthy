class WelcomeController < ApplicationController
  def index
    @user = User.new
    render :layout => false
  end
  def philosophy
  	redirect_to action: "philosophy"
  end
end