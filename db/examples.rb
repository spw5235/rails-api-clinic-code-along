# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(alice bob charlie dana eliot franky gloria henry iulia).each do |name|
  doctor_params = {
    given_name: name,
    family_name: 'mcdreamy'
  }
  next if Doctor.exists? doctor_params
  Doctor.create! doctor_params
end

%w(alice bob charlie dana eliot franky gloria henry iulia).each do |name|
  full_name = "#{name} McFace"
  next if Patient.exists? name: full_name
  Patient.create!(name: full_name,
                  diagnosis: 'Addicted to Love',
                  born_on: '1986-01-01',
                  doctor: Doctor.all.sample)
end
