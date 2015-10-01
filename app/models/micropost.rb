class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  has_many :retweets, class_name: "Micropost", foreign_key: "originpost_id"
  belongs_to :originpost, class_name: "Micropost"
end
