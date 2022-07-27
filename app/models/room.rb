class Room < ApplicationRecord
  validates :name, presence: true
  validates :memo, presence: true
  validates :fee, presence: true
  validates :area, presence: true
  validates :image, presence: true
  validates :start_date, presence: true, on: :update
  validates :end_date, presence: true, on: :update
  validates :number, presence: true, on: :update
  validate :date_check
  
  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.give_id)
  end
  
  def sum_price
    number * fee * (end_date - start_date)
  end

  def date_check
    return false if self.end_date.blank? || self.start_date.blank?
    if self.start_date > self.end_date
        errors.add(:end_date,"は開始日より前の日付で登録できません")
    end
    
end
end
