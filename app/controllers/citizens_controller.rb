class CitizensController < ApplicationController
  def index
    @Citizens = Citizen.order(:name).page params[:page]
  end

  def show
  end
end
