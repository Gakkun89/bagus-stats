class Result < ApplicationRecord
  belongs_to :participant
  belongs_to :workout

  def formatted_result
    return nil unless result

    seconds = result % 60
    minutes = (result / 60) % 60

    format("%02d:%02d", minutes, seconds)
  end
end
