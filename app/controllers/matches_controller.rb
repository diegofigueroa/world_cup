class MatchesController < ApplicationController
  def index
    @matches = Match.all.includes(:local, :visitor, :stadium).order(:date)
    respond_with @matches
  end
  
  def show
    @match = Match.find params[:id]
    respond_with @match
  end
  
  def create
    params[:match] ||= {}
    
    @match = Match.new match_params
    @match.save!
    respond_with @match, status: :created, location: @match
  end
  
  def update
    @match = Match.find params[:id]
    @match.update_attributes!(match_params)
    
    respond_with @match, status: :ok
  end
  
  def destroy
    @match = Match.find params[:id]
    if @match.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @match.errors, status: :unprocessable_entity
    end
  end
  
  protected
  def match_params
    params.require(:match).permit(:local, :visitor, :date, :stadium, :stage)
  end
end
