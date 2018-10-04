class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def show
<<<<<<< HEAD
=======
    authorize @log
>>>>>>> efb8a1ca5e227ce601fbace75b9efdd6ea0792a1
    @log = Log.find(params[:id])
  end

  def new
    @log = Log.new
<<<<<<< HEAD
=======
    authorize @log
>>>>>>> efb8a1ca5e227ce601fbace75b9efdd6ea0792a1
  end

  def create
    @log = Log.new(log_params)
<<<<<<< HEAD
    @user = User.find(@user)
=======
    authorize @log
>>>>>>> efb8a1ca5e227ce601fbace75b9efdd6ea0792a1
    if @log.save
      redirect_to logs_path
    else
      render :new
    end
  end

  def edit
<<<<<<< HEAD
=======

>>>>>>> efb8a1ca5e227ce601fbace75b9efdd6ea0792a1
  end

  def update
  end

  def destroy
  end

  private
<<<<<<< HEAD
=======

>>>>>>> efb8a1ca5e227ce601fbace75b9efdd6ea0792a1
  def log_params
    params.require(:log).permit(:title, :date, :spread_memo, :card_name, :description)
  end
end

    # t.string "card_name"
    # t.text "description"
    # t.date "date"
    # t.string "title"
    # t.string "spread_memo"
