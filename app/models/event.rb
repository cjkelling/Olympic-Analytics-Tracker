class Event < ApplicationRecord
  validates_presence_of :event
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals

  def medalists
    olympians.joins(:medals).select('olympians.*').where("medals.medal != 'NA'")
  end
end
