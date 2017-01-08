class Show < ApplicationRecord
  validates :title, presence: true
  validates :imdb, uniqueness: {scope: :title}
end
