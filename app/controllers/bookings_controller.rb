class BookingsController < ApplicationController
    def create
        @booking = Booking.new(booking_params)
        @booking.save
        redirect_to booking_path(@booking)
    end

    def show
        @booking = Booking.find(params[:id])
    end
    private
    def booking_params
        params.require(:booking).permit(:flight_id, :amount_passengers,
         :passengers_attributes => [:booking_id, :name, :email])
    end

end
