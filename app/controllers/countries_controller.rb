class CountriesController < ApplicationController
  def index
    @countries = Country.order(:name).page params[:page]
  end

  def show
  end
end
