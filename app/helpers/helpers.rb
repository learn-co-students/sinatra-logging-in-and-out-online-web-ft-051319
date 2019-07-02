class Helpers
  def self.current_user(session)
    @user = User.find_by_id(session[:user_id])
  end

  def self.is_logged_in?(session)
    
    #need the exclamations to return true or false instead of returning a value
    #Does session have a :user_id?
    !!session[:user_id]
  end
end