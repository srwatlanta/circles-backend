class CommentSerializer < ActiveModel::Serializer
  has_one :user
  has_one :event
  attributes :id, :comment, :proper_user
end
