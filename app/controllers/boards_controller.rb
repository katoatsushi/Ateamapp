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
    @boards = Board.find(params[:id])
  end

  def update
    @boards = Board.find(params[:id])

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
    @boards = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(
        :title,
        :detail
    )
  end
end
