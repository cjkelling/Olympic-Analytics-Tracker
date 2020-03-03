class Olympian < ApplicationRecord
  validates_presence_of :name,
                        :sex,
                        :age,
                        :height,
                        :weight,
                        :games

  belongs_to :team
  belongs_to :sport
  has_many :medals
  has_many :events, through: :medals

  # def all_olympians
  #   olympians.group(:name).select('name, team, age, sport, count(medal) as total_medals_won')
  # end
end
