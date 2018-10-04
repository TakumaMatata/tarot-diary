class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    @user = User.find(@user)
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
