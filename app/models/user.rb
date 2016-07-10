class User < ActiveRecord::Base
  def self.authenticate(email, password)
    #code
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, )
      user
    else
      nil
    end

    def encrypt_password
      #code
      if password.present?
        self.password_salt = BCrypt::engine.generate_salt
        self.password_hash = BCrypt::engine.hash_secret(password, password_salt)
      end
    end
  end
end
