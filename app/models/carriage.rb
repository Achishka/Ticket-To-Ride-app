class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, presence: true

  before_validation :set_number_for_carriage

  scope :eco, -> {where(type: 'EcoCarriage')}
  scope :coupe, -> {where(type: 'CoupeCarriage')}
  scope :sleep, -> {where(type: 'SleepCarriage')}
  scope :chair, -> {where(type: 'ChairCarriage')}

  private

  def set_number_for_carriage
    self.number = "#{self.train.carriages.count + 1}".to_i
  end
end
