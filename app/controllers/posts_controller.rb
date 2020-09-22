class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]



  # GET /posts
  # GET /posts.json
  def index
      @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  # GET /posts/new
  def new
   
    @post = Post.new(user_id: current_user.id, content: params[:content])
    @post.save
 
  end

  # GET /posts/1/edit

  # POST /posts
  # POST /posts.json

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.fetch(:post, {})
    end
end
