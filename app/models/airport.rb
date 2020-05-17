class Airport < ApplicationRecord
    has_many :departing_flights, class_name: "Flight", foreign_key: :start, dependent: :destroy
    has_many :arriving_flights, class_name: "Flight", foreign_key: :end, dependent: :destroy
end
