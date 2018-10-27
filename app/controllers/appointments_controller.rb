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
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end
