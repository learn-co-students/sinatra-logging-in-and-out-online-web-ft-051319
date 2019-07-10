class Helpers

  def self.current_user (session)
      @user = User.find(session[:user_id])
      @user
  end

  def self.is_logged_in?(session)
    session.has_key?(:user_id)
    end


end
