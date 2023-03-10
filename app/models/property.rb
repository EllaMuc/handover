class Property < ApplicationRecord
  belongs_to :user
  has_many :rooms
  has_many :keys
end
