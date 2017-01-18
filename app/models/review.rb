class Review < ApplicationRecord
  belongs_to :user_show

  validates :phrase, :rating, presence: true
  validates :rating, inclusion: {in: (1..5)}
  validates :standout, inclusion: {in: ["Season 1", "Season 2", "Season 3","Season 4","Season 5","Season 6","Season 7","Season 8","Season 9","Season 10"], message: "must be a valid season!"}
end
