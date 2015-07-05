class Engine < ActiveRecord::Base
  has_many :engine_comments
  has_many :engine_ratings
  has_many :engine_tags
  has_many :components
  belongs_to :license
  mount_uploader :image, FileUploader
end
