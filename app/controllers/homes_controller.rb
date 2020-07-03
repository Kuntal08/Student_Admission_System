class HomesController < ApplicationController
  #before_filter :authorize, only: [:edit, :update]
  def index
    @schools = School.search(params[:search])
  end
end
