class AppointmentsController < ApplicationController
  
  def show
    @appointment = Appointment.find(params[:id])
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create 
    appointment = Doctor.create(doctor_params)
    redirect_to appointment
  end
  
  private 
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end
