class Admin::BasesController < ApplicationController
  before_action :is_admin?, only: [:index]

  def index
  end

  def is_admin?
    if !current_user.admin?
      flash[:danger] = "You are not authorized as Admin!"
      redirect_to root_path
    end
  end
end
