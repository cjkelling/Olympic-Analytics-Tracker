class MedalistSerializer
  def initialize(medalist, event)
    @name = medalist.name
    @team = medalist.team.team
    @age = medalist.age
    @medal = medalist.event_medal(event)
  end
end
