gem 'bcrypt'
class User < ApplicationRecord
    has_many :user_interests
    has_many :interests, through: :user_interests

    validates :username, uniqueness: true, presence: true
    validates :password, uniqueness: true, presence: true
    has_secure_password

end
