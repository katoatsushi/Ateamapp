class BoardsController < ApplicationController
  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    if @board.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def index
    @boards = Board.all
    @new_posts = Post.last(5)
  end

  def show
    @board = Board.find(params[:id])
    @posts = @board.posts
  end

  def destroy
    @board = Board.find(params[:id])
    posts = Post.where(board_id: @board.id)
    comments = Comment.where(board_id: @board.id)
    comments.delete_all
    posts.delete_all
    @board.delete
    redirect_to root_path
  end

  private

  def board_params
    params.require(:board).permit(
        :title,
        :detail
    )
  end
end
