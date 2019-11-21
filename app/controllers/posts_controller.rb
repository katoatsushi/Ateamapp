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
    @post = Post.find(params[:id])
    board_id = @post.board_id
    comments = Comment.where(post_id: @post.id)
    comments.delete_all
    @post.delete
    redirect_to board_path(board_id)

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
