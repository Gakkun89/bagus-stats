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

  def background_color
    case variety
    when "amrap"
      "from-blue-500 via-blue-600 to-blue-700"
    when "for_time"
      "from-green-400 via-green-500 to-green-600"
    when "tabata"
      "from-teal-400 via-teal-500 to-teal-600"
    when "emom"
      "from-purple-500 via-purple-600 to-purple-700"
    end
  end
end
