class EventMedalistSerializer
  def initialize(event)
    @event = event.event
    @medalist = event.medalists.map { |medalist| MedalistSerializer.new(medalist, event.id) }
  end
end
