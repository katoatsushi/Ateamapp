class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comments_params)
    @comment.post_id = params[:post_id]
    @comment.board_id = params[:board_id]

    if @comment.save
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

    def comments_params
    params.require(:comment).permit(
        :title,
        :body,
        :board_id,
        :post_id
    )
  end 
end
