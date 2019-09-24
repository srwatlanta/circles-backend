class Circle < ApplicationRecord
    has_many :circle_invites
    has_many :invites
    has_many :events, through: :invites
    has_many :users, through: :circle_invites

    def unique_events
        self.events.uniq
    end


end
