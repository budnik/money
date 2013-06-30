class CurrenciesController < ApplicationController
  def index
    render json: Currency.includes(:countries).all
  end
end
