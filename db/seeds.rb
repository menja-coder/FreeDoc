# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Patient.create(first_name: "Malade", last_name: "Inconnue")
d1 = Doctor.create(first_name: "Raoul", last_name: "Greek", speciality: "dentist", zip_code: "D101")
d2 = Doctor.create(first_name: "Rabe", last_name: "Tokotany", speciality: "pediatre", zip_code: "D102")
a1 = Appointment.create(date: DateTime.new(2019,8,2), doctor: d2, patient: p1)



5.times do 
	doctor = Doctor.create(name: Faker::Movie.quote, birthdate: Faker::Date.between(from:1990, to:2020))
end

5.times do 
	patient = Patient.create(first_name: Faker::name.first_name, last_name: Faker::name)
	patient.doctor = Doctor.all.sample
end

Appointment.create(date: DateTime.new(2019,8,2), doctor: , patient: p1))
