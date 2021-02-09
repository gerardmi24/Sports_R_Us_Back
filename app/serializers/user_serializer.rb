class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :age
  has_many :favorites
end
