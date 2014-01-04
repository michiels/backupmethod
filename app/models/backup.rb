class Backup < ActiveRecord::Base

  encrypt_with_public_key :password, key_pair: Rails.root.join('dev.key')

  validates :host, :path, :filename_pattern, :scheduled_hour, :scheduled_minute, :username, :password, presence: true

end
