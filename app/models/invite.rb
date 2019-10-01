class Invite < ApplicationRecord
    belongs_to :event
    belongs_to :user
    belongs_to :circle
end
