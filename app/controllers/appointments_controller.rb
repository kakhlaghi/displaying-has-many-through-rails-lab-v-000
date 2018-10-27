class AppointmentsController < ApplicationController
  
  def show
    @appointment = Appointment.find(params[:id])
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create 
    doctor = Doctor.create(doctor_params)
    redirect_to doctor
  end
  
  private 
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end
