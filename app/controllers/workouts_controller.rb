class WorkoutsController < ApplicationController
  # before_action :require_authentication, only: %i[new create edit update]

  def index
    @workouts = Workout.order(date: :desc).paginate(page: params[:page], per_page: 5)
  end

  def calendar
    @date = Date.today.beginning_of_month
    @workouts = Workout.where(date: @date..@date.end_of_month)
  end
end
