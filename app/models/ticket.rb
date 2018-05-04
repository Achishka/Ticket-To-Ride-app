class Ticket < ApplicationRecord
  validates :place_number, :carrige_number, presence: true

  belongs_to :train
  belongs_to :user
end
