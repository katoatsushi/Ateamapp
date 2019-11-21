class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @post.board_id = params[:board_id]

    if @post.save
      redirect_to board_path(params[:board_id])
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def posts_params
    params.require(:post).permit(
        :title,
        :body,
        :board_id
    )
  end 
end
