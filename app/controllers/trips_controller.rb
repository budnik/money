class TripsController < ApplicationController
  def index
    render json: Trip.all
  end

  def create
    if Trip.create! trip_params.except(:countries) do |t|
        t.countries = Country.find_all_by_code trip_params[:countries].map{|c| c[:code]}
      end
      render nothing:true, layout:false, status: :created
    end
  end

  private
    def trip_params
      params.require(:trip).permit(:date, :description, countries: [:code])
    end
end
