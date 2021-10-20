# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# FIXME: only for dev modes
# andradl2
admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true)
student = User.create!(email: 'student@example.com', password: 'password', password_confirmation: 'password')
org_user1 = User.create!(email: 'organizer1@example.com', organization_id: 1, password: 'password', password_confirmation: 'password')
org_user2 = User.create!(email: 'organizer2@example.com', organization_id: 2, password: 'password', password_confirmation: 'password')
org_user3 = User.create!(email: 'organizer3@example.com', organization_id: 3, password: 'password', password_confirmation: 'password')
org_user4 = User.create!(email: 'organizer4@example.com', organization_id: 4, password: 'password', password_confirmation: 'password')
org_user5 = User.create!(email: 'organizer5@example.com', organization_id: 5, password: 'password', password_confirmation: 'password')

# andradl2
org1 = Organization.create!(user: org_user1, name: 'example1.org', email: org_user1.email, phone_no: '8001112222', address: '1 Road Street', city: 'Ewing', state: 'NJ', zip_code: '08658', description: 'This is an org that has been approved and has events 1, 2, and 3.', approved: true)
org2 = Organization.create!(user: org_user2, name: 'example2.org', email: org_user2.email, phone_no: '8001113333', address: '2 Road Street', city: 'Ewing', state: 'NJ', zip_code: '08658', description: 'This is an org that has been approved and has events 4, 5, and 6.', approved: true)
org3 = Organization.create!(user: org_user3, name: 'example3.org', email: org_user3.email, phone_no: '8001114444', address: '3 Road Street', city: 'Ewing', state: 'NJ', zip_code: '08658', description: 'This is an org that has been approved and has NO events.', approved: true)
org4 = Organization.create!(user: org_user4, name: 'example4.org', email: org_user4.email, phone_no: '8001115555', address: '4 Road Street', city: 'Ewing', state: 'NJ', zip_code: '08658', description: 'This is an org that has NOT been approved and currently as events 7 and 8.')
org5 = Organization.create!(user: org_user5, name: 'example5.org', email: org_user5.email, phone_no: '8001116666', address: '5 Road Street', city: 'Ewing', state: 'NJ', zip_code: '08658', description: 'This is an org that has NOT been approved and currently has NO events.')

# andradl2
opp1 = Opportunity.create!(organization: org_user1.organization, name: 'Event 1', address: '1 Street Road', city: 'Ewing', state: 'NJ', zip_code: '08658', transportation: false, description: 'This is event 1.', frequency: 'daily', email: 'org@test.com', on_date: '2019-06-27', start_time: '04:22:00', end_time: '06:39:00', approved: true)
opp2 = Opportunity.create!(organization: org_user1.organization, name: 'Event 2', address: '2 Street Road', city: 'Trenton', state: 'NJ', zip_code: '08657', transportation: false, description: 'This is event 2.', frequency: 'weekly', email: 'org@test.com', on_date: '2025-07-16', start_time: '04:22:00', end_time: '06:07:00', approved: true)
opp3 = Opportunity.create!(organization: org_user1.organization, name: 'Event 3', address: '3 Street Road', city: 'Pennington', state: 'NJ', zip_code: '08656', transportation: true, description: 'This is event 3.', frequency: 'bi-weekly', email: 'org@test.com', on_date: '2025-08-22', start_time: '04:22:00', end_time: '06:07:00')
opp4 = Opportunity.create!(organization: org_user2.organization, name: 'Event 4', address: '4 Street Road', city: 'Hamilton', state: 'NJ', zip_code: '08655', transportation: true, description: 'This is event 4.', frequency: 'monthly', email: 'org@test.com', on_date: '2019-09-19', start_time: '04:22', end_time: '06:07', approved: true)
opp5 = Opportunity.create!(organization: org_user2.organization, name: 'Event 5', address: '5 Street Road', city: 'Lawrence Township', state: 'NJ', zip_code: '08654', transportation: true, description: 'This is event 5.', frequency: 'bi-monthly', email: 'org@test.com', on_date: '2020-06-27', start_time: '04:22:00', end_time: '06:39:00', approved: true)
opp6 = Opportunity.create!(organization: org_user2.organization, name: 'Event 6', address: '6 Street Road', city: 'Princeton', state: 'NJ', zip_code: '08653', transportation: false, description: 'This is event 6.', frequency: 'semi-annually', email: 'org@test.com', on_date: '2020-07-16', start_time: '04:22:00', end_time: '06:07:00', approved: true)
opp7 = Opportunity.create!(organization: org_user4.organization, name: 'Event 7', address: '7 Street Road', city: 'New Egypt', state: 'NJ', zip_code: '08652', transportation: true, description: 'This is event 7.', frequency: 'annually', email: 'org@test.com', on_date: '2020-08-22', start_time: '04:22:00', end_time: '06:07:00')
opp8 = Opportunity.create!(organization: org_user4.organization, name: 'Event 8', address: '8 Street Road', city: 'Moorestown', state: 'NJ', zip_code: '08651', transportation: false, description: 'This is event 8.', frequency: 'one-time', email: 'org@test.com', on_date: '2019-09-19', start_time: '04:22', end_time: '06:07:00', approved: true)

Tag.create!(name: 'tag1', approved: true)
Tag.create!(name: 'tag2', approved: true)
Tag.create!(name: 'tag3', approved: true)
Tag.create!(name: 'tag4', approved: true)
Tag.create!(name: 'tag5', approved: true)
Tag.create!(name: 'tag6', approved: true)
Tag.create!(name: 'tag7', approved: true)
Tag.create!(name: 'tag8', approved: true)
Tag.create!(name: 'tag9', approved: true)

# andradl2
Notification.create!(created_at: '21 May 2019 14:00:00 -0400', organization: org1, opportunity: opp1, name: "New Event: " + opp1.name, message: org1.name + " has created a new event!")
Notification.create!(created_at: '22 May 2019 14:00:00 -0400', organization: org1, opportunity: opp2, name: "New Event: " + opp2.name, message: org1.name + " has created a new event!")
Notification.create!(created_at: '23 May 2019 14:00:00 -0400', organization: org1, opportunity: opp3, name: "New Event: " + opp3.name, message: org1.name + " has created a new event!")
Notification.create!(created_at: '10 May 2019 14:00:00 -0400', organization: org2, opportunity: opp4, name: "New Event: " + opp4.name, message: org2.name + " has created a new event!")
Notification.create!(created_at: '13 May 2019 14:00:00 -0400', organization: org2, opportunity: opp5, name: "New Event: " + opp5.name, message: org2.name + " has created a new event!")
Notification.create!(created_at: '22 May 2019 13:00:00 -0400', organization: org2, opportunity: opp6, name: "New Event: " + opp6.name, message: org2.name + " has created a new event!")
Notification.create!(created_at: '19 May 2019 14:00:00 -0400', organization: org4, opportunity: opp7, name: "New Event: " + opp7.name, message: org4.name + " has created a new event!")
Notification.create!(created_at: '29 May 2019 14:00:00 -0400', organization: org4, opportunity: opp8, name: "New Event: " + opp8.name, message: org4.name + " has created a new event!")
