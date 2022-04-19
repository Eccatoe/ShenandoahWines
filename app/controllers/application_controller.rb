class ApplicationController < ActionController::API 
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    before_action :logged_in_user


    def logged_in_user
        @user = User.first
    end 

    private

    def record_invalid(e)
        render json: e.message
    end
end
