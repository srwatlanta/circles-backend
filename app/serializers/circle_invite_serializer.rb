class CircleInviteSerializer < ActiveModel::Serializer
  belongs_to :circle
  belongs_to :user
  attributes :id, :circle
end
