module PostsHelper
	def follow(user)
		if  current_user.friendships.where(friend_id: user.id).empty? && user.id != current_user.id
			link_to 'Follow', "/friendship/#{user.id}"
		elsif !(current_user.friendships.where(friend_id: user.id).empty?) && user.id != current_user.id
			link_to 'Unfollow', "/friendship/#{user.id}", method: 'delete'
		end
	end


end
