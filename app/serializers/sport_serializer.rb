class SportSerializer < ActiveModel::Serializer
    attributes :id, :sport_name
    has_many :teams
  end
  