class Invite < ApplicationRecord
    belongs_to :user
    belongs_to :circle
    belongs_to :event
end
