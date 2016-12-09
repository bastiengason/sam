# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Notification.destroy_all
Task.destroy_all
User.destroy_all
Category.destroy_all

Category.create(name: "Home")
Category.create(name: "Health")
Category.create(name: "Self-improvement")
Category.create(name: "Productivity")
Category.create(name: "Other")


User.create(email: "anne@aol.com", name: "annela", password: "alalal")
Task.create(name: "Water the plants", category: Category.all.sample, user: User.all.sample)
