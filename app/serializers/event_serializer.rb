class EventSerializer
  def initialize(sport)
    @sport = sport.sport
    @events = get_events(sport)
  end

  def get_events(sport)
    sport.events.map do |event|
      event.event
    end
  end
end
