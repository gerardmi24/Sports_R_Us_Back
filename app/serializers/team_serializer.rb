class TeamSerializer < ActiveModel::Serializer
    attributes :id, :sport_id, :team_name, :city, :roster, :coach, :sport_name
    has_many :favorites
    belongs_to :sport
  end
  