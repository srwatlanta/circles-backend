class InviteSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :circle
  belongs_to :event
  attributes :id, :user_id, :circle_id, :event, :status
end
