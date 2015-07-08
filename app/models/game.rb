class Game < ActiveRecord::Base
  has_many :game_comments
  has_many :game_ratings
  has_many :game_tags
  has_many :components, through: :component_in_games
  has_many :component_in_games
  belongs_to :engine
  belongs_to :license
  mount_uploader :image, FileUploader
end
