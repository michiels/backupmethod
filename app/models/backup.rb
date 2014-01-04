class Backup < ActiveRecord::Base

  encrypt_with_public_key :password, key_pair: Rails.root.join('dev.key')

end
