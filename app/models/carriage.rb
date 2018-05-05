class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, presence: true

  scope :eco, -> {where(type: 'EcoCarriage')}
  scope :coupe, -> {where(type: 'CoupeCarriage')}
  scope :sleep, -> {where(type: 'SleepCarriage')}
  scope :chair, -> {where(type: 'ChairCarriage')}
end
