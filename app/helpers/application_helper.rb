module ApplicationHelper
  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    else
      link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    end
  end


  def followers(user)
   	followers = user.other_friendships.count
   	followers
  end

  
   def following(user)
   		following = user.friendships.count
   		following
   end
end
