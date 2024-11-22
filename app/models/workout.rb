class Workout < ApplicationRecord
  has_many :rounds
  has_many :results
end
