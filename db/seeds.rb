# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ClauseMaster.delete_all

20.times do
  ClauseMaster.create!(
    name: Faker::Lorem.sentence(5),
    content: Faker::Lorem.paragraph(10),
    note: Faker::Lorem.sentence(2),
    status: nil
  )
end
