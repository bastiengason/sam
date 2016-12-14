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
puts "Destroy all works!"


User.create(email: "anne@aol.com", name: "annela", password: "alalal")
User.create(email: "hello@sam.be", name: "Bastien", password: "samsam")
puts "All users work!"

home = Category.create(name: "home")
health = Category.create(name: "health")
si = Category.create(name: "self-improvement")
prod = Category.create(name: "productivity")
other = Category.create(name: "other")
puts "All categories work!"

Task.create(name: "Water the plants", category: home, user: User.first)
Task.create(name: "Practice yoga", category: health, user: User.first)
Task.create(name: "Do fitness", category: health, user: User.first)
Task.create(name: "Deeply breathe", category: health, user: User.first)
puts "Half tasks work!"
Task.create(name: "Drink water", category: health, user: User.first)
Task.create(name: "Meditate", category: si, user: User.first)
Task.create(name: "Plan my work day", category: prod, user: User.first)
Task.create(name: "Attend networking events", category: prod, user: User.first)

10.times do
  Notification.create(status: "done", task: Task.first)
end
puts "10 times notif works!"

5.times do
  Notification.create(status: "done", task: Task.last)
end
puts "5 times notif works!"


