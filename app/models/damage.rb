class Damage < ApplicationRecord
  belongs_to :room
  validates :description, presence: true
end
