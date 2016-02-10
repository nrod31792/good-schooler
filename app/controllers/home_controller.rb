class HomeController < ApplicationController
  def index
    @users = User.all
    @user = User.first
  end

  def index2
    @users = User.al
  end
end
