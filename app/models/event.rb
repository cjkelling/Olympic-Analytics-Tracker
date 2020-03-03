class Event < ApplicationRecord
  validates_presence_of :event
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals
end
