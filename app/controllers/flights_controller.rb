class FlightsController < ApplicationController
    def index
        @airports = Airport.all.map{ |u| [u.code, u.id] }
        @flight_times = Flight.all.map{ |u| [u.depart] }
        @passengers = [1,2,3,4]
        if !params[:flight].nil?
        @results = Flight.where(start: flight_params[:from_airport], end: flight_params[:to_airport])
        @pass = flight_params[:passengers]
        @booking = Booking.new
        @pass.to_i.times { @booking.passengers.build }
        end
    end

    private
    def flight_params
        params.require(:flight).permit(:from_airport, :to_airport, :depart, :passengers)
    end



end
