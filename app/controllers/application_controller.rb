class ApplicationController < ActionController::API 
    before_action :logged_in_user


    def logged_in_user
        @user = User.first
    end 
end
