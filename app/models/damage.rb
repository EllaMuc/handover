class Damage < ApplicationRecord
  belongs_to :room
  validates :description, presence: true
  has_many_attached :photos

  validate :photo_format

  private

  def photo_format
    if photos.attached?
      photos.each do |photo|
        if !photo.content_type.in?(%('image/jpeg image/JPG image/png'))
          errors.add(:photos, 'must be a PNG or JPG file')
        end
      end
    else
      errors.add(:photos, 'are required')
    end
  end
end
