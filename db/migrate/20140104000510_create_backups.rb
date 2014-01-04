class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|
      t.string :name
      t.string :host
      t.string :path
      t.string :filename_pattern
      t.string :username
      t.binary :password
      t.binary :password_key
      t.binary :password_iv
      t.integer :scheduled_hour
      t.integer :scheduled_minute

      t.timestamps
    end
  end
end
