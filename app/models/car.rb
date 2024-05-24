class Car < ApplicationRecord
    has_many :reservations

    validates :make, :model, :year, :price_per_day, presence: true
    validates :available, inclusion: { in: [true, false] }
end
