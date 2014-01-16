class DeploymentsController < ApplicationController
  def show
    @entity = Deployment.find(params[:id])
    respond_to do |format|
      format.json { render js: @entity.to_json }
    end
  end
  
  def update
    @entity = Deployment.find(params[:id])
    
    @entity.update_attributes(params.require(:deployment).permit!)
    
    render text: 'ok'
  end
end
