class Credit < ActiveRecord::Base
  belongs_to :user
  belongs_to :resource
end
