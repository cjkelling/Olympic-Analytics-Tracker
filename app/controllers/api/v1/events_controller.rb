class Api::V1::EventsController < ApplicationController
  def index
    render json: Sport.all.map { |sport| EventSerializer.new(sport) }
  end

  def medalists
    render json: EventMedalistSerializer.new(Event.find(params[:id]))
  end
end
