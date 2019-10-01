class Event < ApplicationRecord
  belongs_to :user
  has_many :invites, dependent: :destroy
  has_many :users, through: :invites
  has_many :circles, through: :invites
  has_many :comments

end
