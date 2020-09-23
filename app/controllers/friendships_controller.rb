class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]

  def Follow 
    Friendship.create(user_id: current_user.id , friend_id: params[:id])
    redirect_to root_path
  end

  def Unfollow
    friendship = Friendship.where(user_id: current_user.id,friend_id: params[:id] )
    friendship[0].destroy
    redirect_to root_path
  end

  def update
    redirect_to  'https://google.com'
  end


  private

    def set_friendship
      @friendship = Friendship.find(params[:id])
    end
end
