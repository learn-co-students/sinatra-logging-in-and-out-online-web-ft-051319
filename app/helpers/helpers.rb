class Helpers

    def self.current_user(sessions_hash)
        user = User.find(sessions_hash[:user_id])
    end
    
    def self.is_logged_in?(sessions_hash)
        !!sessions_hash[:user_id]
    end
end