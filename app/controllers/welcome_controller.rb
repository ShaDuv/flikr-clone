class WelcomeController < ApplicationController

  def index
    @featured_users = User.all.limit(15)
    render :index
  end
end
