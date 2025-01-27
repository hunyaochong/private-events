class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendees, foreign_key: "attended_event_id"
  has_many :attendees, through: :event_attendees

  scope :past, -> { where(date: ...Date.today) }
  scope :upcoming, -> { where(date: Date.today..) }
end
