class SocialNetworksController < ApplicationController
  def index
  end
   def new
    @social_network =  social_network.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = current_user
  end

  def set_appointment
    @social_network = social_network.find(params[:id])
    authorize @social_network
  end

  def social_network_params
    params.require(:service).permit(:name, :description, :price, :photo)
  end
end
