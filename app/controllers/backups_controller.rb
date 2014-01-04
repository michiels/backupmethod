class BackupsController < ApplicationController

  def index

  end

  def new
    @backup = Backup.new
  end

  def create
    @backup = Backup.new(backup_params)

    if @backup.save
      redirect_to backup_url(@backup)
    else
      render :new
    end
  end

  def show
    @backup = Backup.find(params[:id])
  end

  private

  def backup_params
    params.require(:backup).permit(:name, :host, :path, :filename_pattern, :username, :password)
  end

end
