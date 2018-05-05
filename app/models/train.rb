class Train < ApplicationRecord
  validates :number, presence: true
  
  has_many :tickets, dependent: :destroy
  has_many :carriages, dependent: :destroy

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
end
