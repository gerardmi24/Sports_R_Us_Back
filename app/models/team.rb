class Team < ApplicationRecord
    has_many :favorites
    belongs_to :sport
end
