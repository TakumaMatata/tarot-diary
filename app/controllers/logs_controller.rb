class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @log = User.new
  end

  def create
    @log = Log.new(log_params)
    @log.user = User.find(params[:log_id])
    if @log.save
      redirect_to user_logs_path
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
