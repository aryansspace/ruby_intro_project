class CountriesController < ApplicationController
  def index
    @countries = Country.order(:name).page params[:page]
  end

  def show
    @Show_country = Country.find(params[:id])
  end
end
