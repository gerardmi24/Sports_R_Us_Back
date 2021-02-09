class FavoriteSerializer < ActiveModel::Serializer
    attributes :user_id, :team_id
    belongs_to :user
    belongs_to :team
  end
  