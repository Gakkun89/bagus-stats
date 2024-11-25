class WorkoutsController < ApplicationController
  # before_action :require_authentication, only: %i[new create edit update]

  def index
    render :index
  end
end
