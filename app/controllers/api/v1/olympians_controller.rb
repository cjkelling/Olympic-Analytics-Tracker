class Api::V1::OlympiansController < ApplicationController
  def index
    olympian_data = Olympian.all
    data = olympian_data.map { |olympian| OlympianSerializer.new(olympian)}
    render json: data
  end
end
