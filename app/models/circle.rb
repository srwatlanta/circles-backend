class Circle < ApplicationRecord
  has_many :circle_invites, dependent: :destroy
  has_many :invites
  has_many :events, through: :invites
  has_many :users, through: :circle_invites
  validates :name, presence: true
  validates :img_url, presence: true

  def unique_events
    self.events.uniq
  end
end
