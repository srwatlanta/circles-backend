class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :name, :email, :member_since, :img_url
  end