class WorkoutsController < ApplicationController
  # before_action :require_authentication, only: %i[new create edit update]

  def index
    @workouts = Workout.order(date: :desc).paginate(page: params[:page], per_page: 5)
  end

  def show
    @workout = Workout.find(params[:id])
    @rounds = @workout.rounds
    @strength = @workout.strength
  end

  def calendar
    start_date = if params[:start_date]
      params[:start_date].to_date.beginning_of_month
    else
      Date.today.beginning_of_month
    end
    @workouts = Workout.where(date: start_date..start_date.end_of_month)
  end
end
