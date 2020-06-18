class Admin::LocationsController < Admin::BasesController
  before_action :is_admin?

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to [:admin, @location]
    else
      render 'new'
    end
  end

  def update
    @location = Location.find(params[:id])

    if @location.update(location_params)
      redirect_to [:admin, @location]
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    redirect_to admin_locations_path
  end

  private
    def location_params
      params.require(:location).permit(:city_name, :country_name, :pin)
    end

end
