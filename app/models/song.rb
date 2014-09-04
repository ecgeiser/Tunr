class Song < ActiveRecord::Base
	belongs_to :artist
	has_many :purchases
	has_many :users, through: :purchases
end