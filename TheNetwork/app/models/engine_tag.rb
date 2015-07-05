class EngineTag < ActiveRecord::Base
	belongs_to :tag
	belongs_to :engine
end
