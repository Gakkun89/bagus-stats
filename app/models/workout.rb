class Workout < ApplicationRecord
  has_many :rounds
  has_many :results

  enum :variety, [ :amrap, :for_time, :tabata, :emom ]
end
