class Event < ApplicationRecord
    belongs_to :user
    has_many :invites
    has_many :users, through: :invites
    has_many :circles, through: :invites
    has_many :comments
end
