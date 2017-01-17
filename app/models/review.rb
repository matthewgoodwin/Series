class Review < ApplicationRecord
  belongs_to :user_show, dependent: :destroy

  validates :phrase, rating:, presence: true
  validates :my_rating, inclusion: {in: (1..5)}
end
