class User < ActiveRecord::Base
    attr_accessor :password, :password_confirmation, :login

    before_save :encrypt_password
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :password, confirmation: true

    def login=(login)
      #code
      @login = login
    end

    def login
      #code
      @login || self.name || self.email
    end

    def self.authenticate(login, password)
        #code
        user = find_by_name(login)
        if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt )
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

    def self.search(query)
      #code
      where("name like ? OR email like ?", "%#{query}%", "%#{query}%")
    end
end
