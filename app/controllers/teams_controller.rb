class TeamsController < ApplicationController
  def index
    @teams = Team.all.order(:name)
    respond_with @teams
  end
  
  def show
    @team = Team.find params[:id]
    respond_with @team
  end
  
  def create
    params[:team] ||= {}
    
    @team = Team.new team_params
    @team.save!
    respond_with @team, status: :created, location: @team
  end
  
  def update
    @team = Team.find params[:id]
    @team.update_attributes!(team_params)
    
    respond_with @team, status: :ok
  end
  
  def destroy
    @team = Team.find params[:id]
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
