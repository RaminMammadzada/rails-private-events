class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  has_many :enrollments
  has_many :attendees, class_name: 'User', foreign_key: 'user_id', through: :enrollments

  validates :title, :description, :date, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  
  
end
