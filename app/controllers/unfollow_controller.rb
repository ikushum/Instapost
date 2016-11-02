class UnfollowController < ApplicationController
    before_action :authenticate_user!
    
    def create
      @user = User.find(params[:user_id])
      current_user.stop_following(@user)
      redirect_to user_path(params[:user_id])
      respond_to do |format|
         format.html {}
         format.js {}
      end
    end
end
