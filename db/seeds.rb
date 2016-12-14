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


User.create(email: "anne@aol.com", name: "Anne-Laure", password: "alalal")
User.create(email: "hello@sam.be", name: "Bastien", password: "samsam")


home = Category.create(
  name: "Home"
)
health = Category.create(
  name: "Health"
)
si = Category.create(
  name: "Self-improvement"
)
prod = Category.create(
  name: "Productivity"
)
other = Category.create(
  name: "Other"
)

Task.create(name: "Water the plants", category: home, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
puts "Yay, first task created!"
Task.create(name: "Practice yoga", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Do fitness", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Deeply breathe", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Drink water", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Meditate", category: si, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Plan my work day", category: prod, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Attend networking events", category: prod, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
puts "Yay, last task created!"

20.times do
  Notification.create(status: "done", task: Task.first)
end

10.times do
  Notification.create(status: "done", task: Task.last)
end


