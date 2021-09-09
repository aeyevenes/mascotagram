class CustomersController < ApplicationController
    def index
  end
   def new
    @customer =  customer.new
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
    @customer = customer.find(params[:id])
    authorize @customer
  end

  def customer_params
    params.require(:service).permit(:name, :description, :price, :photo)
  end
end
