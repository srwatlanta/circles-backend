class User < ApplicationRecord
  has_secure_password
  has_many :circle_invites
  has_many :circles, through: :circle_invites
  has_many :friendships
  has_many :invites
  has_many :events, through: :invites
  has_many :friends, through: :friendships
  has_many :comments

  def find_friendships
    friendships = Friendship.all
    foo = friendships.select do |friendship|
      friendship.friend_id == self.id || friendship.user_id == self.id
    end
    x = []
    foo.map do |f|
      if f.user_id == self.id 
        x << {f.id => UserSerializer.new(User.find(f.friend_id))}
      else f.friend_id == self.id 
        x << {f.id => UserSerializer.new(User.find(f.user_id))}
      end
    end
    x
  end
  
end
