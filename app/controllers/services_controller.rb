class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  # def new
  #   @service =  service.new
  # end

  # def create
  # end

  # def show
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  # private

  # def set_user
  #   @user = current_user
  # end

  # def set_service
  #   @service = service.find(params[:id])
  #   authorize @service
  # end

  # def service_params
  #   params.require(:service).permit(:name, :description, :price, :photo)
  # end
end
