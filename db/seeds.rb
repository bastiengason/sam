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
User.create(email: "hello@sam.be", name: "Bastien", password: "samsam")


home = Category.create(
  name: "Home",
  icon: "fa-home"
)
health = Category.create(
  name: "Health",
  icon: "fa-medkit"
)
si = Category.create(
  name: "Self-improvement",
  icon: "fa-star"
)
prod = Category.create(
  name: "Productivity",
  icon: "fa-hourglass-start"
)
other = Category.create(
  name: "Other",
  icon: "fa-plus"
)

Task.create(name: "Water the plants", category: home, user: User.first)
Task.create(name: "Practice yoga", category: health, user: User.first)
Task.create(name: "Do fitness", category: health, user: User.first)
Task.create(name: "Deeply breathe", category: health, user: User.first)
Task.create(name: "Drink water", category: health, user: User.first)
Task.create(name: "Meditate", category: si, user: User.first)
Task.create(name: "Plan my work day", category: prod, user: User.first)
Task.create(name: "Attend networking events", category: prod, user: User.first)


20.times do
  Notification.create(status: "done", task: Task.first)
end

10.times do
  Notification.create(status: "done", task: Task.last)
end


