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


User.create(email: "anne@aol.com", name: "annela", password: "alalal")

home = Category.create(name: "home")
health = Category.create(name: "health")
si = Category.create(name: "self-improvement")
prod = Category.create(name: "productivity")
other = Category.create(name: "other")

Task.create(name: "Water the plants", category: home, user: User.all.sample)
Task.create(name: "Practice yoga", category: health, user: User.all.sample)
Task.create(name: "Do fitness", category: health, user: User.all.sample)
Task.create(name: "Deeply breathe", category: health, user: User.all.sample)
Task.create(name: "Drink water", category: health, user: User.all.sample)
Task.create(name: "Meditate", category: si, user: User.all.sample)
Task.create(name: "Plan my work day", category: prod, user: User.all.sample)
Task.create(name: "Attend networking events", category: prod, user: User.all.sample)

10.times do
  Notification.create(status: "done", task: Task.first)
end

5.times do
  Notification.create(status: "done", task: Task.last)
end


