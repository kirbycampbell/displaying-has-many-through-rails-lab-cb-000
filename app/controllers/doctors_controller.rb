class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find_by(params[:id])
    @appointments = Appointment.find_by(params[:doctor_name])
  end

  private

  def doctor_params
    params.require(:doctor)
  end
end
