class Team < ApplicationRecord
  validates_presence_of :team
  has_many :olympians
end
