class Admin::SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def edit
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(board_params)

    if @school.save
      redirect_to admin_boards_url
    else
      render 'new'
    end
  end

  def update
    @school = School.find(params[:id])

    if @school.update(board_params)
      redirect_to [:admin, @school]
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy

    redirect_to admin_boards_path
  end

  private
    def board_params
      params.require(:school).permit(:board, :description)
    end
    
end
