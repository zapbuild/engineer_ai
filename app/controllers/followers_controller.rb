class FollowersController < ApplicationController
  before_action :authenticate_user!

  def my_followers
    @my_followers = current_user.followers
  end
end
