class Admin::DivisionsController < Admin::BasesController
  before_action :is_admin?

  def index
    @divisions = Division.all
  end

  def show
    @division = Division.find(params[:id])
  end

  def new
    @division = Division.new
  end

  def edit
    @division = Division.find(params[:id])
  end

  def create
    @division = Division.new(division_params)

    if @division.save
      redirect_to [:admin, @division]
    else
      render 'new'
    end
  end

  def update
    @division = Division.find(params[:id])

    if @division.update(division_params)
      redirect_to [:admin, @division]
    else
      render 'edit'
    end
  end

  def destroy
    @division = Division.find(params[:id])
    @division.destroy

    redirect_to admin_divisions_path
  end

  private
  def division_params
    params.require(:division).permit(:division, :stage, :description)
  end
end
