class BackupsController < ApplicationController

  def index

  end

  def new
    @backup = Backup.new
  end

end
