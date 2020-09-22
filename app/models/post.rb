class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy

	def self.all_posts 
		self.joins(:user).select('posts.user_id, posts.content, users.name as user_name')
	end
end
