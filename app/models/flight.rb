class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport", foreign_key: :start
    belongs_to :to_airport, class_name: "Airport", foreign_key: :end
end
