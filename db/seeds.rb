# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create sample tasks
task1 = Task.create!(
  title: "Build new feature",
  description: "Implement the new dashboard feature with charts and statistics."
)

task2 = Task.create!(
  title: "Fix bug in authentication",
  description: "Users are reporting issues logging in with certain email formats."
)

task3 = Task.create!(
  title: "Update documentation",
  description: "Add API documentation for the new endpoints we released last week."
)

# Create sample messages for task1
task1.messages.create!(content: "I can start working on this tomorrow.")
task1.messages.create!(content: "Do we have a design mockup for the dashboard?")
task1.messages.create!(content: "Yes, I'll share the Figma link.")

# Create sample messages for task2
task2.messages.create!(content: "This is urgent, let's prioritize it.")

puts "Seeded #{Task.count} tasks and #{Message.count} messages."
