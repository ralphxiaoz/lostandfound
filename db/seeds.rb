# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{title: 'black'},
                              {title: 'red'},
                              {title: 'white'},
                              {title: 'saphire'}])

Category.all.each do |c|
  5.times do
    c.items.create(title: Faker::Lorem::word, description: Faker::Lorem::sentence, owner: Faker::Name.name)
  end
end