class TeamsController < ApplicationController
  
  after_action only: [:index]   { |c| c.paginate :teams }
  after_action only: [:matches] { |c| c.paginate :matches }
  after_action only: [:goals]   { |c| c.paginate :goals }
  
  def index
    @teams = Team.all.includes(:group, :local_matches, :visitor_matches, :goals).search(params[:q]).result.page(params[:page]).order(:name)
    respond_with @teams
  end
  
  def show
    @team = Team.where(name: params[:id].capitalize).first
    
    respond_with @team
  end
  
  def matches
    team = Team.where(name: params[:id].capitalize).first
    @matches = team.matches.page(params[:page])
    
    respond_with @matches
  end
  
  def goals
    team = Team.where(name: params[:id].capitalize).first
    @goals = team.goals.search(params[:q]).result.page(params[:page])
    
    respond_with @goals
  end
  
  def create
    params[:team] ||= {}
    
    @team = Team.new team_params
    @team.save!
    respond_with @team, status: :created, location: @team
  end
  
  def update
    @team = Team.where(name: params[:id].capitalize).first
    @team.update_attributes!(team_params)
    
    respond_with @team, status: :ok
  end
  
  def destroy
    @team = Team.where(name: params[:id].capitalize).first
    if @team.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @team.errors, status: :unprocessable_entity
    end
  end
  
  protected
  def team_params
    params.require(:team).permit(:name, :coach, :description, :flag_url, :photo_url, :group_id)
  end
end
