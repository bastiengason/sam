# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Array
  def third_to_last
    self[-3]
  end

  def second_to_last
    self[-2]
  end

end

Notification.destroy_all
Task.destroy_all
User.destroy_all
Category.destroy_all


User.create(email: "hello@sam.be", name: "Bastien", password: "samsam")
User.create(email: "anne@aol.com", name: "Anne-Laure", password: "alalal")


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

Task.create(name: "Water the plants", category: home, user: User.first, beacon: "Kitchen", duration: 40, distance: 1)
Task.create(name: "Practice yoga", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Meditate", category: si, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Do fitness", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Plan my work day", category: prod, user: User.first, beacon: "Office", duration: 40, distance: 1)
Task.create(name: "Deeply breathe", category: health, user: User.first, beacon: "Bedroom", duration: 40, distance: 1)
Task.create(name: "Call Mom", category: other, user: User.first, beacon: "Bedroom", duration: 30, distance: 1)
Task.create(name: "Drink water", category: health, user: User.first, beacon: "Kitchen", duration: 40, distance: 1)
Task.create(name: "Go through To Do list", category: prod, user: User.first, beacon: "Office", duration: 40, distance: 1)
Task.create(name: "Tell my team how great it is!", category: prod, user: User.first, beacon: "Office", duration: 40, distance: 1)
puts "Yay, last task created!"

30.times do
  Notification.create(status: "done", task: Task.first)
end

25.times do
  Notification.create(status: "done", task: Task.third_to_last)
end

50.times do
  Notification.create(status: "done", task: Task.second_to_last)
end


15.times do
  Notification.create(status: "done", task: Task.last)
end


