class Component < ActiveRecord::Base
  belongs_to :engine
  has_many :games, through: :component_in_games
  has_many :component_in_games
  belongs_to :license
  has_many :component_ratings
  mount_uploader :image, FileUploader
end
