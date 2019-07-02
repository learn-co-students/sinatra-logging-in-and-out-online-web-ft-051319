class Helpers < ActiveRecord::Base

    def current_user
        user = User.find_by(username: params[:username], password: params[:password])
        sessions[:user_id] = user.id 
    end 
end