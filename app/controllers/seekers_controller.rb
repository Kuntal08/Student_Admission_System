class SeekersController < ApplicationController

  def index
    @seekers = Seeker.all
  end

  def show
    @seeker = Seeker.find(params[:id])
    @board = Board.find(@seeker.board_id)
    @school = School.find(@seeker.school_id)
    @division = Division.find(@seeker.division_id)
  end

  def new
    @seeker = Seeker.new
    @board_options = Board.all.map{ |b| [b.board, b.id]}
    @school = School.find_by board_id: @board_options
    @school_options = School.all.map{ |u| [u.name, u.id]}
#    @division = Division.find_by school_id: @school_options
    @division_options = Division.all.map{ |d| [d.division, d.id]}
  end

  def edit
    @seeker = Seeker.find(params[:id])
    @board_options = Board.all.map{ |b| [b.board, b.id]}
    @school = School.find_by board_id: @board_options
    @school_options = School.all.map{ |u| [u.name, u.id]}
#    @division = Division.find_by school_id: @school_options
    @division_options = Division.all.map{ |d| [d.division, d.id]}
  end

  def create
    @seeker = Seeker.new(seeker_params)
    if @seeker.save
      redirect_to @seeker
    else
      render 'new'
    end
  end

  def update
    @seeker = Seeker.find(params[:id])
    if @seeker.update(seeker_params)
      redirect_to @seeker
    else
      render 'new'
    end
  end

  def destroy
    @seeker = Seeker.find(params[:id])
    @seeker.destroy

    redirect_to seekers_path
  end

  private
    def seeker_params
      params.require(:seeker).permit(:first_name, :middle_name, :last_name, :home_address, :gender, :email, :phone, :birth_date, :father_name, :mother_name, :mother_employment, :father_employment, :board_id, :school_id, :division_id, :approve, :reject)
    end

end
