class JoinPatientDoctorAppointmentCity < ActiveRecord::Migration[6.0]
  def change
  	add_reference :cities, :doctor, foreign_key: true
  	add_reference :cities, :patient, foreign_key: true 
  	add_reference :cities, :appointment, foreign_key: true
  end
end
