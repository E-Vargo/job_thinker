# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Commitment.create(plan_id: 1, user_id: 1, name: "health", passion_level: 4)
Commitment.create(plan_id: 2, user_id: 2, name: "wealth", passion_level: 6)
Commitment.create(plan_id: 3, user_id: 1, name: "leisure", passion_level: 5)
Commitment.create(plan_id: 2, user_id: 2, name: "savings", passion_level: 3)
Commitment.create(plan_id: 3, user_id: 1, name: "hobbies", passion_level: 6)