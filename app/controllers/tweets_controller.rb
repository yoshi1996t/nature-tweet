class TweetsController < ApplicationController
  def index
    @users = User.all
  end
end
