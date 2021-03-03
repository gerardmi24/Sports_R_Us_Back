class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :age
  # Might not need password to be serialized!
  has_many :favorites
end
