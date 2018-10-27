class AppointmentsController < ApplicationController
  
  def show
    @appointment = Appointment.find(params[:id])
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create 
    appointment = appointment.create(appointment_params)
    redirect_to appointment
  end
  
  private 
    def appointment_params
      params.require(:appointment).permit(:name, :department)
    end
end
