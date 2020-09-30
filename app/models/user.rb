class User < ApplicationRecord
  has_many :enrollments
  has_many :events, through: :enrollments
  
  # has_many :attended_events

  def self.attendee

  end
end
