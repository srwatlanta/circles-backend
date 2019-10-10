class FriendshipSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :friend
    attributes :id, :user, :friend
end