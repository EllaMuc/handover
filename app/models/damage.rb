class Damage < ApplicationRecord
  belongs_to :room
  validates :description, presence: true
  has_one_attached :photo
end
