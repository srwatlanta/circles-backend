class EventSerializer < ActiveModel::Serializer
    belongs_to :user
    has_many :invites
    has_many :users, through: :invites
    has_many :comments
    attributes :id, :location, :name, :date, :start_time, :img_url, :price, :user
end