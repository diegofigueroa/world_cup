class GoalsController < ApplicationController
  
  def index
    @goals = Goal.all.includes(:team).where(match_id: params[:match_id]).search(params[:q]).result.page(params[:page]).order(:minute)
    respond_with @goals
  end
  
  def create
    params[:goal] ||= {}
    
    if name = params[:goal][:team]
      t = Team.where(name: name.capitalize).first
      if t
        params[:goal][:team_id] = t.id 
        params[:goal][:team] = nil
      end
    end
    
    @match = Match.find params[:match_id]
    @goal = @match.goals.create! goal_params
    
    respond_with @match, status: :created, location: @match
  end
  
  def update
    @goal = Goal.find params[:id]
    @goal.update_attributes!(goal_params)
    
    respond_with @goal, status: :ok
  end
  
  def destroy
    @goal = Goal.find params[:id]
    if @goal.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @goal.errors, status: :unprocessable_entity
    end
  end
  
  private
  
  def goal_params
    params.require(:goal).permit(:scorer, :minute, :penalty, :own_goal, :team, :team_id)
  end
end
