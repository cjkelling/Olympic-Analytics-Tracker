class Api::V1::EventsController < ApplicationController
  def index
    render json: Sport.all.map { |sport| EventSerializer.new(sport) }
  end

  def medalists
    event = Event.find_by(id: params[:id])
    if event
      render json: EventMedalistSerializer.new(event)
    else
      render json: 'Error. Could not find event with the ID.'
    end
  end
end
