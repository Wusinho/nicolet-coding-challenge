class Subscriber < ApplicationRecord
validates :preferences, presence: true
validates :email, presence: true, uniqueness: true
PREFERENCES = ["Women's Fashion", "Men's Fashion", "Children's Fashion"]
end
