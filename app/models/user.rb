class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :purchases
	has_many :songs, through: :purchases

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password_digest, presence: true
	validates :balance, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than_or_equal_to: 0 }

end