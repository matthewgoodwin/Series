class UserShow < ApplicationRecord
  belongs_to :user
  belongs_to :show
  has_many :reviews, dependent: :destroy


  validates :show_id, :user_id, presence: true
  validates :show_id, uniqueness: {scope: :user_id}
end
