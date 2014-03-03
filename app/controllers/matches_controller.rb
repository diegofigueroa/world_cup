class MatchesController < ApplicationController
  
  after_action only: [:index]   { |c| c.paginate :matches }
  
  def index
    @matches = Match.all.includes(:local, :visitor, :stadium).search(params[:q]).result.page(params[:page]).order(:date)
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
  
  def start
    @match = Match.find params[:id]
    @match.start!
    
    respond_with @match, status: :ok
  end
  
  def finish
    @match = Match.find params[:id]
    @match.finish!
    
    respond_with @match, status: :ok
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
