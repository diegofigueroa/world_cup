class StadiaController < ApplicationController
  
  after_action only: [:index]   { |c| c.paginate :stadia }
  
  def index
    @stadia = Stadium.all.search(params[:q]).result.page(params[:page]).order(:name)
    respond_with @stadia
  end
  
  def show
    @stadium = Stadium.find params[:id]
    respond_with @stadium
  end
  
  def create
    params[:stadium] ||= {}
    
    @stadium = Stadium.new stadium_params
    @stadium.save!
    respond_with @stadium, status: :created, location: @stadium
  end
  
  def update
    @stadium = Stadium.find params[:id]
    @stadium.update_attributes!(stadium_params)
    
    respond_with @stadium, status: :ok
  end
  
  def destroy
    @stadium = Stadium.find params[:id]
    if @stadium.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @stadium.errors, status: :unprocessable_entity
    end
  end
  
  protected
  def stadium_params
    params.require(:stadium).permit(:name, :city, :construction_year, :capacity, :image_url)
  end
end
