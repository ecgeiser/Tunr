class User < ActiveRecord::Base
	has_many :purchases
	has_many :songs, through: :purchases
	validates :email, presence: true
	validates :password_digest, presence: true
end