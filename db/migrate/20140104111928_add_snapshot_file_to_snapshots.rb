class AddSnapshotFileToSnapshots < ActiveRecord::Migration
  def change
    add_column :snapshots, :snapshot_file, :string
  end
end
