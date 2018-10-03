class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def show
    authorize @log
    @log = Log.find(params[:id])
  end

  def new
    @log = Log.new
    authorize @log
  end

  def create
    @log = Log.new(log_params)
    authorize @log
    if @log.save
      redirect_to logs_path
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def log_params
    params.require(:log).permit(:title, :date, :spread_memo, :card_name, :description)
  end
end

    # t.string "card_name"
    # t.text "description"
    # t.date "date"
    # t.string "title"
    # t.string "spread_memo"
