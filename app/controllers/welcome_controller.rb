class WelcomeController < ApplicationController

  def index
    @users = User.all
    @featured_users = @users.sample(15)
    render :index
  end
end
