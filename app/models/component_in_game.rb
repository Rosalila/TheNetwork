class ComponentInGame < ActiveRecord::Base
  belongs_to :game
  belongs_to :component
end
