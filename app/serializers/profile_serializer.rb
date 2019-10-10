class ProfileSerializer < ActiveModel::Serializer
  has_many :invites, class_name: "Invite"
  has_many :events, class_name: "Event"
  has_many :circles, class_name: "Circle"
  has_many :find_friendships, class_name: "Find_Friendships"
  has_many :circle_invites, class_name: "Circle_Invites"
  attributes :id, :username, :name, :email, :member_since, :img_url
end
