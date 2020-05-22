class PassengerMailer < ApplicationMailer
    default from: 'mailer@example.com'
    def thank_you_email(passenger)
        @passenger = passenger.name
        @url = "localhost:3000/bookings/#{passenger.booking.id}"
        mail(to: passenger.email, subject: "Thank you for booking")
    end
end
