class Purchase < ActiveRecord::Base
	belongs_to :user
	belongs_to :song

	validates :user_id, presence: true
	validates :song_id, presence: true, uniqueness: { scope: :user_id, message: "You have already purchased this song!" }

end