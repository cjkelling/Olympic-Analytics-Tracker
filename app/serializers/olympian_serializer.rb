class OlympianSerializer
  def initialize(olympian)
    @name = olympian.name
    @team = olympian.team.team
    @age = olympian.age
    @sport = olympian.sport.sport
    @total_medals_won = olympian.total_medals_won
  end
end
