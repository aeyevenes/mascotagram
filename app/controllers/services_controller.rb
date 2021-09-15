class ServicesController < ApplicationController
  before_action :set_service, only: %i[show create edit update destroy]

  def index
    @services = Service.all
<<<<<<< HEAD
=======
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude
      }
    end
>>>>>>> c64c77d121ee56316d1f5b48a0b39d21fcb46ca9
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    if @service.save
      redirect_to services_path
      flash[:notice] = "El servicio #{@service.name} ha sido creado exitosamente."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to service_path
      flash[:notice] = "El servicio #{@service.name} ha sido actualizado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(
      :name,
      :address,
      :telephone,
      :description,
      :availability,
      :category_id,
      :latitude,
      :longitude,
      photos: []
    )
  end
end
