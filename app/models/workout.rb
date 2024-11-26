class Workout < ApplicationRecord
  has_many :rounds
  has_many :results

  enum :variety, [ :amrap, :for_time, :tabata, :emom ]

  FORMATTED_VARIETY = {
    "amrap" => "AMRAP",
    "for_time" => "For Time",
    "tabata" => "Tabata",
    "emom" => "EMOM"
  }

  def start_time
    date
  end
end
