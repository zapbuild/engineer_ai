class UsersController < ApplicationController
  before_action :authenticate_user!

  def all_users
     @all_users = User.where.not(:id => current_user.id)
  end

  def follow
    if params[:user_id].present?

      user = User.find_by(:id => params[:user_id])
      if user.present?

        already_follower = current_user.followers.where(:user_id=>current_user.id, :follower_id => params[:user_id])

        if already_follower.present?
            @response = {:status=>true, :msg=>"Already following"}

        else

            follower = Follower.create({ :user_id => current_user.id, :follower_id => params[:user_id] })

            if follower.id.present?
              @response = {:status=>true, :msg=>"You have successfully followed"}
            else
              @response = {:status=>false, :msg=>"An error occurred, Please try again later."}
            end
        end
      end

    end

  end

  def my_profile
    @my_followers = current_user.followers
    @my_followings = current_user.followings

  end


end
