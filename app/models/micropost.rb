class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }, presence: true

  # Forces Microposts to come out of the DB newest first.
  default_scope order: 'microposts.created_at DESC'
end
