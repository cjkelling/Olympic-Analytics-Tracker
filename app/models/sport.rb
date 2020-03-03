class Sport < ApplicationRecord
  validates_presence_of :sport
  has_many :events
  has_many :olympians
end
