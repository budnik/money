class TripsController < ApplicationController
  def index
    render json: Trip.includes([:countries, countries: :trips])
  end

  def create

    if t = Trip.create(trip_params.except(:country_names)) do |t|
        cnames = trip_params[:country_names].split(',').select{|country_code| country_code[/\w{2,3}/]}
        t.countries = Country.find_all_by_code cnames
      end
      render json: t, serializer: TripSerializer, status: :created
    end
  end

  private
    def trip_params
      params.require(:trip).permit(:date, :description, :country_names)
    end
end
