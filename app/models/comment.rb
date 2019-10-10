class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def proper_user
    user = User.find_by(id: self.user_id)
    UserSerializer.new(user)
  end
end
