class WorkoutsController < ApplicationController
  # before_action :require_authentication, only: %i[new create edit update]

  def index
    @workouts = Workout.all.order(date: :desc).first(10)
  end
end
