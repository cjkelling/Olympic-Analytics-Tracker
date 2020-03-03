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

  def self.youngest
    order('age').limit(1).first
  end

  def self.oldest
    order('age desc').limit(1).first
  end

  def self.average_age
    average('age').round(1).to_f
  end

  def self.average_weight(sex)
    where(sex: sex).average('weight').round(1).to_f
  end
end
