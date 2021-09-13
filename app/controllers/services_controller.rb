class ServicesController < ApplicationController
  before_action only: %i[new edit update destroy]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new # (service_params)
    @service.save
    redirect_to services_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    redirect_to service_path
    flash[:notice] = 'service was updated.'
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  def show
    @service = Service.find(params[:id])
  end

  # def set_service
  # @service = Service.find(params[:service_id])
  # end

  def service_params
    params.require(:service).permit(:name, :address, :telephone, :description)
  end
end
