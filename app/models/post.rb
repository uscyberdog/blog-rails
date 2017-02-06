class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :title, presence: { message: "Title field cannot be blank" }
	validates :content, presence: { message: "Content field cannot be blank"}
end
