class Workout < ApplicationRecord
  has_many :rounds
  has_many :results

  enum :variety, [ :amrap, :for_time, :tabata, :emom ]

  FORMATTED_VARIETY = {
    "amrap" => "AMRAP",
    "for_time" => "Time",
    "tabata" => "Tabata",
    "emom" => "EMOM"
  }

  def start_time
    date
  end

  def strength
    rounds.find_by(number: 0)
  end

  def non_strength_rounds
    rounds.where.not(number: 0)
  end
end
