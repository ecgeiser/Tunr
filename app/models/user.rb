class User < ActiveRecord::Base
	has_many :purchases
	validates :email, presence: true
	validates :password_digest, presence: true
end