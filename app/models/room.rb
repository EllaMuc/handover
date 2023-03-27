class Room < ApplicationRecord
  belongs_to :property
  has_many :damages, dependent: :destroy
end
