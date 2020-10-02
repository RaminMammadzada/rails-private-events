class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :enrollments, dependent: :destroy
  has_many :attendees, through: :enrollments, class_name: 'User', foreign_key: :user_id

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
  # Ex:- scope :active, -> {where(:active => true)}
  # Ex:- scope :active, -> {where(:active => true)}

  validates :title, :description, :date, :location, presence: true, length: { maximum: 50 }
end
