class SearchController < ApplicationController
  def index
    @country = Country.where('name LIKE ?', "%#{params[:q]}%")
  end
end
