class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])

    redirect_to posts_path if @like.save
    redirect_to posts_path
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, post_id: params[:post_id])
    if like
      like.destroy
      redirect_to posts_path
    end
    redirect_to posts_path
  end
end
