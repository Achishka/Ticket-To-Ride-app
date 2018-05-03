class WelcomeController < ApplicationController
  def index
        @railway_stations = RailwayStation.all
        @trains = Train.all
  end
end
