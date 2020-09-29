class User < ApplicationRecord
  has_many :events
  # has_many :attended_events
end
