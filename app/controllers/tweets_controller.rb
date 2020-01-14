class TweetsController < ApplicationController
  before_action :authenticate_user!

  def my_tweets
       @my_tweets = current_user.tweets.order("created_at desc")

  end
end
