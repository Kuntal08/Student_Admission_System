class SeekersController < ApplicationController

  def index
    @seekers = Seeker.where(user_id: session[:user_id])
  end

  def show
    @seeker = Seeker.find(params[:id])
    @school = School.find(@seeker.school_id)
    @board = Board.find(@seeker.board_id)
    @division = Division.find(@seeker.division_id)
  end

  def new
    @seeker = Seeker.new
  end

  def edit
    @seeker = Seeker.find(params[:id])
  end

  def create
    @seeker = Seeker.new(seeker_params)
    @seeker.user_id = session[:user_id]
    if @seeker.save
      @school = School.find(@seeker.school_id)
      @seeker.board_id = @school.board_id
      @seeker.save
      redirect_to @seeker
    else
      render 'new'
    end
  end

  def update
    @seeker = Seeker.find(params[:id])
    if @seeker.update(seeker_params)
      @school = School.find(@seeker.school_id)
      @seeker.board_id = @school.board_id
      @seeker.save
      if current_user.admin == true
        redirect_to admin_reject_path(@seeker)
      else
        redirect_to @seeker
      end
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
      params.require(:seeker).permit(:first_name, :middle_name, :last_name, :home_address, :gender, :email, :phone, :birth_date, :father_name, :mother_name, :mother_employment, :father_employment, :board_id, :school_id, :division_id, :approve, :reject, :reason)
    end

end
