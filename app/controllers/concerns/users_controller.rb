class UsersController < ApplicationController
  def show
    @user = User.where(id: params[:id])[0]
    render 'show'
  end
end
