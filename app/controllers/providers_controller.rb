class ProvidersController < ApplicationController
  def index
  end

  def new
    @provider = Provider.new
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

  def set_provider
    @provider = Provider.find(params[:id])
    # authorize @provider
  end

  def provider_params
    params.require(:service).permit(:name, :description, :price, :photo)
  end
end
