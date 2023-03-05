class Key < ApplicationRecord
  belongs_to :property
end

class Property < ApplicationRecord
  has_many :keys
end
