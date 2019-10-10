class CircleSerializer < ActiveModel::Serializer
    has_many :users, class_name: "User"
    has_many :invites, class_name: "Invite"
    has_many :events, class_name: "Event"
    attributes :id, :name, :img_url, :unique_events
end