class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    validates :username, uniqueness: true
end
