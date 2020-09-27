class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])

    if @like.save
      redirect_to posts_path, notice: 'Like'
    else
      redirect_to posts_path
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, post_id: params[:post_id])
    like&.destroy
    redirect_to root_path
  end
end
