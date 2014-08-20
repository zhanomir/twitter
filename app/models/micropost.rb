class Micropost < ActiveRecord::Base
  validates :user_id, presence: true
  validates :content, length: { maximum: 140, minimum: 1 }
  belongs_to :user
    default_scope -> { order('created_at DESC') }

    end
