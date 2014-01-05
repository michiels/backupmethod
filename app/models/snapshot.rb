class Snapshot < ActiveRecord::Base
  mount_uploader :snapshot_file, SnapshotUploader
end
