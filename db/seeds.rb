# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

my_content = "Apollonius of Perga extraplanetary. Tingling of the spine. Orion's sword, rich in heavy atoms cosmic ocean astonishment encyclopaedia galactica tesseract two ghostly white figures in coveralls and helmets are soflty dancing, rich in heavy atoms the only home we've ever known how far away."

# 10.times do |i|
#  Comments.create(content: my_content, user_id: 1, post_id: i)
# end

Post.all.each do |post|
	post.comments.create(user_id: 1, content: my_content)
	post.comments.create(user_id: 2, content: my_content)
	# same as line 1 above
	# Comment.create(post_id: post.id, user_id: 1, content: my_content)
end