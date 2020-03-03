class Api::V1::OlympiansController < ApplicationController
  def index
    if(params.has_key?(:age) && params.has_value?('youngest'))
      render json: OlympianSerializer.new(Olympian.youngest)
    else
      olympian_data = Olympian.all
      data = olympian_data.map { |olympian| OlympianSerializer.new(olympian)}
      render json: data
    end
  end
end
