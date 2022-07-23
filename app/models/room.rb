class Room < ApplicationRecord
  validates :name, presence: true
  validates :memo, presence: true
  validates :fee, presence: true
  validates :area, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
