# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
    city = City.create!(name: Faker::Address.city)
end

20.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..15))
end

10.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
    zip_code: Faker::Address.postcode, city_id: rand(1..15))
end

15.times do
    appointment = Appointment.create!(date: Faker::Date.between(25.days.ago, Date.today), 
    patient_id: rand(1..20), doctor_id: rand(1..10), city_id: rand(1..15))
end

10.times do
    speciality = Speciality.create!(name: Faker::Cannabis.strain, doctor_id: rand(1..10))
end    
