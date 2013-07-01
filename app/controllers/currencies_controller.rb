class CurrenciesController < ApplicationController
  def index
    render json: Currency.includes([:countries, {:countries=>:trips}]).all
  end
end
