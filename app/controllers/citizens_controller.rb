class CitizensController < ApplicationController
  def index
    @Citizens = Citizen.order(:name).page params[:page]
  end

  def show
    
    @Show_citizen = Citizen.find(params[:id])
  end
end
