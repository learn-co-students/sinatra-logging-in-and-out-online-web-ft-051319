class Helpers 
    # < Sinatra::Base
    def self.current_user(session)
        @user = User.find(session[:user_id])
        @user
    end

    def self.is_logged_in?(session)
        !!session[:user_id] ? true : false
        # double bang will convert value to a boolean
        # without double bang, value will be nil
        # !!session[:user_id] 
        # dont need ternary operator
    end
end