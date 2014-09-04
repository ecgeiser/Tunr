class Song < ActiveRecord::Base
	belongs_to :artist
	has_many :purchases
	has_many :users, through: :purchases

	validates :title, presence: true
	validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0 } 
	validates :preview_url, presence: true, uniqueness: true
	validates :song_url, presence: true, uniqueness: true
	validates :year, numericality: true, allow_nil: true
	validates :artist_id, presence: true

end