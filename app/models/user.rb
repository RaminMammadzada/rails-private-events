class User < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :attended_events, class_name: 'Event', foreign_key: 'event_id', through: :enrollments
  #has_many :attended_events, through: :enrollments, source: :event
  has_many :events

end
