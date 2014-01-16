class FacilitiesController < ApplicationController
  def show
    @entity = Facility.find(params[:id])
  end
end
