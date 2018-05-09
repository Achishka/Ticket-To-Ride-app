class Route < ApplicationRecord
  
  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  before_validation :set_name

  validate :stations_cannot_be_less_than_two

  validates :name, presence: true

  private

  def stations_cannot_be_less_than_two
    if railway_stations.size < 2
      errors.add(:station_stations_cant_be_less_than_two, 'В маршруте должно быть мининум 2 станции')
    end
  end

  def set_name
    self.name = "#{railway_stations.first.title}-#{railway_stations.last.title}"
  end  
end