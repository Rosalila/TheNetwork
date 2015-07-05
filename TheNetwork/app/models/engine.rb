class Engine < ActiveRecord::Base
	has_many :engine_tags
	belongs_to :license
  	mount_uploader :image, FileUploader
end
