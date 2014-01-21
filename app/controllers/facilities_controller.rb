class FacilitiesController < ApplicationController
  def new
    @entity = Facility.new
  end
  
  def create
    @entity = Facility.new(params.require(:facility).permit(allowed_params))
    if @entity.save
      redirect_to @entity
    else
      render action: 'new'
    end
  end
  
  def show
    @entity = Facility.find(params[:id])
  end
  
  private
  
  def allowed_params
    [:name, :picture]
  end
end
