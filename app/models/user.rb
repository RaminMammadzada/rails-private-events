class User < ApplicationRecord
  has_many :enrollments
  has_many :attended_events, class_name: 'Event', foreign_key: 'event_id', through: :enrollments
  has_many :events

  # has_many :attended_events, through: :enrollments, source: "Event"

  def self.attendee

  end
end
