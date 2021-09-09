class AppointmentsController < ApplicationController
def index
  end
   def new
    @Appointment = Appointment.new
  end

  def create
    @Appointment = Appointment.new(appointment_params)
    @Appointment.user = @user
    authorize @Appointment
    if @Appointment.save
      redirect_to appointment_path(@Appointment)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @Appointment.update(appointment_params)
      redirect_to appointment_path(@Appointment)
    else
      render :edit
    end
  end

  def destroy
    if @Appointment.destroy
      redirect_to appointment_path
    else
      render :show
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_appointment
    @Appointment = Appointment.find(params[:id])
    authorize @Appointment
  end

  def appointment_params
    params.require(:service).permit(:name, :description, :price, :photo)
  end
end
