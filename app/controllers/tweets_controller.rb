class TweetsController < ApplicationController
  def index
    @users = User.all
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :image).merge(user_id: current_user.id)
  end
end
