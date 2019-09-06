class Character < ActiveRecord::Base
    belongs_to :Character
    belongs_to :Show
end