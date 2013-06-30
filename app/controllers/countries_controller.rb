class CountriesController < ApplicationController
  def index
    render json: Country.all
  end

  def visited
    render json: Country.visited.to_a
  end
end
