class UserSerializer < ActiveModel::Serializer
    has_many :circles
    attributes :id, :username, :name, :email, :member_since, :img_url
end