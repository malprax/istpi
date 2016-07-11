class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :passwod, confirmation: true

    self.authenticate(email, password)
        #code
        user = find_by_email(email)
        if user && user.password_hash == BCrypt::Engine.hash_secret(password, )
          user
        else
          nil
        end
    end

    def encrypt_password
      #code
      if password.present?
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end
end
