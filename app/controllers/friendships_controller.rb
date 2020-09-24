# rubocop: disable all

class FriendshipsController < ApplicationController
  before_action :set_friendship, only: %i[show edit update destroy]

  def follow
    Friendship.create(user_id: current_user.id, friend_id: params[:id])
    redirect_to root_path
  end

  def unfollow
    friendship = Friendship.where(user_id: current_user.id, friend_id: params[:id])
    friendship[0].destroy
    redirect_to root_path
  end

  private

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end
end

# rubocop: enable all
