class Subscriber < ApplicationRecord
validates :preferences, presence: true
PREFERENCES = ["Women's Fashion", "Men's Fashion", "Children's Fashion"]
end
