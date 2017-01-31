class Review < ApplicationRecord
  belongs_to :user_show

  validates :phrase, :rating, :standout, presence: true
  validates :phrase, length: { maximum: 40, too_long: "max of %(count)characters per review!"}
  validates :rating, inclusion: {in: (1..5), message: "rating must be between 1 and 5 stars!"}
  validates :standout, inclusion: {in: ["Season 1", "Season 2", "Season 3","Season 4","Season 5","Season 6","Season 7","Season 8","Season 9","Season 10"], message: "must be a valid season!"}
  validates :standout, uniqueness: {scope: :user_show, message: "only one review per season!"}
end
