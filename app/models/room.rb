class Room < ApplicationRecord
  validates :name, presence: true
  validates :memo, presence: true
  validates :fee, presence: true
  validates :area, presence: true
  validates :image, presence: true
  validates :start_date, presence: true, on: :update
  validates :end_date, presence: true, on: :update
  validates :number, presence: true, on: :update
  
  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.give_id)
  end
  
  def sum_price
    number * fee * (end_date - start_date)
  end
end
