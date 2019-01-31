# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end



10.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
    speciality: Faker::Cannabis.strain, zip_code: Faker::Address.postcode)
end



15.times do
    appointment = Appointment.create!(date: Faker::Date.between(25.days.ago, Date.today), 
    patient_id: rand(1..20), doctor_id: rand(1..10))
end

