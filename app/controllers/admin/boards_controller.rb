class Admin::BoardsController < Admin::BasesController
  before_action :is_admin?

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def edit
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to admin_boards_url
    else
      render 'new'
    end
  end

  def update
    @board = Board.find(params[:id])

    if @board.update(board_params)
      redirect_to [:admin, @board]
    else
      render 'edit'
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    redirect_to admin_boards_path
  end

  private
    def board_params
      params.require(:board).permit(:board, :full_form,:description)
    end

end
