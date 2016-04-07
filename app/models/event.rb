class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  
  has_many :goings, foreign_key: :event_id
  has_many :atendees, through: :goings, source: :user
end
