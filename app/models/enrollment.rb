class Enrollment < ApplicationRecord
  belongs_to :attended_event, class_name: 'Event', foreign_key: 'event_id'
  belongs_to :attendee, class_name: 'User', foreign_key: 'user_id'
  # belongs_to :user
  # belongs_to :event
end
