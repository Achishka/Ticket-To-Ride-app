class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, :bottom_seats, :top_seats
end
