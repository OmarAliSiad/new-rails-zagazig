# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Editor.destroy_all
Post.destroy_all
PostEditor.destroy_all

u1 = User.create!(
  name: "omar",
  email: "omar@test.com"
)

u2 = User.create!(
  name: "ali",
  email: "ali@test.com"
)

e1 = Editor.create!(
  name: "ahmed",
  email: "ahmed@test.com"
)

e2 = Editor.create!(
  name: "mohamed",
  email: "mohamed@test.com"
)

p1 = Post.create!(
  title: "First Post",
  body: "First Post",
  creator: u1
)

p2 = Post.create!(
  title: "Second Post",
  body: "Second Post",
  creator: u2
)

PostEditor.create!(post: p1, editor: e1)
PostEditor.create!(post: p1, editor: e2)
PostEditor.create!(post: p2, editor: e1)
