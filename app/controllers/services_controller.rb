class ServicesController < ApplicationController
  before_action :set_service, only: %i[show create edit update destroy]

  def index
    @services = Service.all
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude
      }
    end
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
