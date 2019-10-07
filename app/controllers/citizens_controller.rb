class CitizensController < ApplicationController
  def index
    @Citizens = Citizen.all
  end

  def show
  end
end
