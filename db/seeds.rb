# frozen_string_literal: true

require 'faker'

puts 'Deleting all records'

Participant.delete_all
Booking.delete_all
Room.delete_all
User.delete_all

puts 'Creating rooms'

5.times do
  name = Faker::Games::Pokemon.location
  Room.create!(name: name)
end

puts 'Rooms created'

puts 'Creating users'

u = User.new
u.name = 'Martijn'
u.email = 'martijn@evil-corp.com'
u.password = 'bogeys'
u.save

puts 'Creating bookings'

b = Booking.new
b.user = User.first
b.room = Room.first
b.start_date = 1.day.ago.beginning_of_day + 8.hours
b.end_date = 1.day.ago.end_of_day + 10.hours
b.save


b = Booking.new
b.user = User.first
b.room = Room.first
b.start_date = 2.days.from_now.beginning_of_day + 8.hours
b.end_date = 2.days.from_now.end_of_day + 10.hours
b.save