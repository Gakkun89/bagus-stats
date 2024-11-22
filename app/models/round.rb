class Round < ApplicationRecord
  has_and_belongs_to_many :exercises
  belongs_to :workout
end
