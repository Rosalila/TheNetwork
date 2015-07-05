class Resource < ActiveRecord::Base
  belongs_to :license
  belongs_to :category
  has_many :resource_ratings
  mount_uploader :image, FileUploader
  mount_uploader :download, FileUploader
end
