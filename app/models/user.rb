# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  email         :string
#  password_hash :string
#  password_salt :string
#  role          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
    attr_accessor :password, :password_confirmation, :login
    has_many :choose_electrical_subjects, dependent: :destroy
    has_many :students_biographies, dependent: :destroy

    before_save :encrypt_password
    before_create :create_biography
    validates :name, presence: true
    validates :password, presence: true
    validates :password, confirmation: true

    #validasi email
    validates :email, presence: true
    validates_uniqueness_of :email, :case_sensitive => false
    validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}

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
      where("lower(name) like lower(?) OR lower(email) like lower(?)", "%#{query}%", "%#{query}%")
    end

    def create_biography
      #code
      if self.role == 'mahasiswa'
        StudentsBiography.create(:user_id => :id )
      end
    end

    def stambuk
      #code

    end
end
