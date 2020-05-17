class FlightsController < ApplicationController
    def index
        @airports = Airport.all.map{ |u| [u.code] }
        @flight_times = Flight.all.map{ |u| [u.depart] }
        @passengers = ["1","2","3","4"]
    end
end
