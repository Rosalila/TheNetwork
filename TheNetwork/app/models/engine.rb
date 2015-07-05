class Engine < ActiveRecord::Base
	has_many :engine_tags
  mount_uploader :image, FileUploader
end
