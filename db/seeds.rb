# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bryan = User.create(username: "bryan")
math = Category.create(name: "math")
science = Category.create(name: "science")
test_doc = Document.create(user_id: bryan.id, category_id: math.id, title: "algebra")
test_doc2 = Document.create(user_id: bryan.id, category_id: math.id, title: "geometry")
test_doc3 = Document.create(user_id: bryan.id, category_id: science.id, title: "chemistry")
