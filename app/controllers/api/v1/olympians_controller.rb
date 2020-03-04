class Api::V1::OlympiansController < ApplicationController
  def index
    if params.key?(:age) && params.value?('youngest')
      render json: OlympianSerializer.new(Olympian.youngest)
    elsif params.key?(:age) && params.value?('oldest')
      render json: OlympianSerializer.new(Olympian.oldest)
    else
      render json: Olympian.all.map { |olympian| OlympianSerializer.new(olympian) }
    end
  end

  def stats
    render json: StatSerializer.new
  end
end
