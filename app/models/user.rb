class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, :firstname, :lastname, presence: true
  validates :email, uniqueness: true

  has_many :shows, through: :user_shows

end
