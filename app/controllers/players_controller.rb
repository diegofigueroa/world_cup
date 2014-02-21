class PlayersController < ApplicationController
  def index
    @players = Player.all.order(id: :desc)
    respond_with @players
  end
  
  def show
    @player = Player.find params[:id]
    respond_with @player
  end
  
  def create
    params[:player] ||= {}
    
    @player = Player.new player_params
    @player.save!
    respond_with @player, status: :created, location: @player
  end
  
  def update
    @player = Player.find params[:id]
    @player.update_attributes!(player_params)
    
    respond_with @player, status: :ok
  end
  
  def destroy
    @player = Player.find params[:id]
    if @player.destroy
      render json: {status: 'ok'}, status: :ok
    else
      respond_with @player.errors, status: :unprocessable_entity
    end
  end
  
  protected
  def player_params
    params.require(:player).permit(:name, :birthday, :height, :weight, :squad_number, :photo_url, :team_id)
  end
end
