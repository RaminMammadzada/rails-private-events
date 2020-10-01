class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :enrollments
  has_many :attendees, through: :enrollments, class_name: 'User', foreign_key: 'user_id'

  validates :title, :description, :date, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  
  #class_name: 'User', foreign_key: 'user_id'
end
