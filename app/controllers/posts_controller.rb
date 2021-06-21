class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    posts = Post.limit(20).order("created_at DESC")

    render json: posts.to_json
  end

  def show
    render json: @post.to_json
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post.to_json
    end
  end

  def update
    if @post.update(post_params)
      render json: @post.to_json
    end
  end

  def destroy
    if @post.destroy
      render json: @post.to_json
    end
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.permit(:day, :result, :caption)
    end
end
