class Show < ApplicationRecord
  validates :title, presence: true
  validates :imdb, uniqueness: {scope: :title}

  has_many :user_shows
  has_many :users, through: :user_shows
end
