class Property < ApplicationRecord
  belongs_to :user
  has_many :rooms
  has_many :keys
  has_many :readings
  validates :city, presence: true
  validates :street, presence: true
  validates :postcode, presence: true
  validates :move_in, presence: true, if: :move_out?
  validates :move_out, presence: true, if: :move_in?

  def move_out?
    move_out.nil?
  end

  def move_in?
    move_in.nil?
  end
end
