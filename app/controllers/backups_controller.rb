require 'stringio'

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

  def edit
    @backup = Backup.find(params[:id])

    render :new
  end

  def update
    @backup = Backup.find(params[:id])

    if @backup.update_attributes(backup_params)
      redirect_to backup_url(@backup)
    else
      render :new
    end
  end

  def fetch
    now = Time.now
    @backup = Backup.find(params[:id])

    @entries = []

    @pattern = @backup.filename_pattern.gsub(/YYYY/, now.strftime('%Y'))
    @pattern.gsub!(/MM/, now.strftime('%m'))
    @pattern.gsub!(/DD/, now.strftime('%d'))
    @pattern.gsub!(/HH/, now.strftime('%H'))
    @pattern.gsub!(/mm/, "%d[0-9]" % @backup.scheduled_minute.to_s.first)
    @pattern.gsub!(/(ss)/, '*')

    Net::SFTP.start(@backup.host, @backup.username, password: @backup.password.decrypt('')) do |sftp|
      @entries = sftp.dir.glob(@backup.path, @pattern)

      if @entries.any?
        entry = @entries.first.name
        entry_path = File.join(@backup.path, '2014.01.04.02.07.27/variant_production.tar.gpg')
        sftp.file.open(entry_path, 'r') do |f|
          raise f.string
        end
      end
    end

  end

  private

  def backup_params
    params.require(:backup).permit(:scheduled_hour, :scheduled_minute, :name, :host, :path, :filename_pattern, :username, :password)
  end

end
