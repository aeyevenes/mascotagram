class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[new show create edit update destroy]
  def index
    @appointment = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      render :edit
    end
  end

  def destroy
    if @appointment.destroy
      redirect_to appointment_path
    else
      render :show
    end
  end

  private
  #def set_user
   # @user = current_user
  # end
  def set_appointment
    @appointment = Appointment.new(params[:id])
  end

  def appointment_params
       params.require(:service).permit(:name, :description, :price, :photo)
  end
end
