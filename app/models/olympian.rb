class Olympian < ApplicationRecord
  validates_presence_of :name,
                        :sex,
                        :age,
                        :height,
                        :weight,
                        :team,
                        :games,
                        :sport,
                        :event,
                        :medal
end
