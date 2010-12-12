class Micropost < ActiveRecord::Base
  belongs_to :user
  MIN , MAX = 3, 140
  validates_length_of :content, :within => MIN..MAX, :on => :create,
    :message => "must be between #{MIN} and #{MAX} characters"
  validates_presence_of :user_id, :on => :create, :message => "can't be blank"
end
