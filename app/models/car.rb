class Car < ApplicationRecord
    has_many :reservation

    validates :make, :model, :year, :price_per_day, presence: true
    validates :availability, inclusion: { in: [true, false] }
end
