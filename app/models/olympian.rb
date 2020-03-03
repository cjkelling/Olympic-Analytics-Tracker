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

  def total_medals_won
    medals.where("medal != 'NA'").count
  end
end
