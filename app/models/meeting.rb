class Meeting < ApplicationRecord
  validate :title, presence: true
  validate :agenda, presence: true
  validate :location, presence: true
  
  has_many :speaker_meetings
  has_many :speakers, through: :speaker_meetings
end
