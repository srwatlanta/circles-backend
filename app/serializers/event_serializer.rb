class EventSerializer < ActiveModel::Serializer
    belongs_to :user
    attributes :id, :location, :name, :date, :start_time, :img_url, :price, :user_id
end