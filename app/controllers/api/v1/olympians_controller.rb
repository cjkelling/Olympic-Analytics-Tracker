class Api::V1::OlympiansController < ApplicationController
  def index
    if(params.has_key?(:age) && params.has_value?('youngest'))
      render json: OlympianSerializer.new(Olympian.youngest)
    elsif(params.has_key?(:age) && params.has_value?('oldest'))
      render json: OlympianSerializer.new(Olympian.oldest)
    else
      render json: Olympian.all.map { |olympian| OlympianSerializer.new(olympian)}
    end
  end

  def stats
    render json: StatSerializer.new
  end
end
