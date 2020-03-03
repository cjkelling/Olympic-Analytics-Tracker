class Api::V1::EventsController < ApplicationController
  def index
    render json: Sport.all.map { |sport| EventSerializer.new(sport)}
  end
end
