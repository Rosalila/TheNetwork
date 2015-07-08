class Asset < ActiveRecord::Base
  has_many :asset_comments
  has_many :asset_ratings
  has_many :asset_tags
  has_many :incentives
  has_many :credits
  belongs_to :component
  belongs_to :category
  belongs_to :license
end
