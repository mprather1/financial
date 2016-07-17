# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(description: 'new account', balance: 1234.21)

5.times do |x|
  Record.create(account_id: 1, memo: Faker::Hacker.noun, amount: Faker::Number.decimal(2))
end
