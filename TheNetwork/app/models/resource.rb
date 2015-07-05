class Resource < ActiveRecord::Base
  mount_uploader :image, FileUploader
  mount_uploader :download, FileUploader
end
