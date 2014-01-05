class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.string :backup_file_path
      t.belongs_to :backup

      t.timestamps
    end
  end
end
