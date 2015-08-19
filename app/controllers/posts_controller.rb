class PostsController < ApplicationController
  def index
    @posts = Post.all

    respond_with @posts
  end

  def show
    @post = Post.friendly.find params[:slug]

    respond_with @post
  end

  def new
    @post = Post.new

    respond_with @post
  end

  def edit
    @post = Post.friendly.find params[:slug]

    respond_with @post
  end

  def create
    @post = Post.new params[:post]
    @post.save

    respond_with @post
  end

  def update
    @post = Post.friendly.find params[:slug]
    @post.update params[:post]

    respond_with @post
  end

  def destroy
    @post = Post.friendly.find params[:slug]
    @post.destroy

    respond_with @post
  end
end
