class PostsController < ApplicationController
  # get /posts
  def index
    @posts = Post.all
  end

  # get /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # get /posts/new
  def new
    @post = Post.new
  end

  # get /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  # patch /posts/:id
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: "Post was successfully updated."
    else
      render :edit
    end
  end

  # delete /posts/:id
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "Post was successfully deleted."
  end

   private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
