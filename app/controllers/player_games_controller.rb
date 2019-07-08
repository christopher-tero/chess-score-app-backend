class PlayerGamesController < ApplicationController
  before_action :set_player_game, only: [:show, :update, :destroy]

  # GET /player_games
  def index
    @player_games = PlayerGame.all

    render json: @player_games
  end

  # GET /player_games/1
  def show
    render json: @player_game
  end

  # POST /player_games
  def create
    @player_game = PlayerGame.new(player_game_params)

    if @player_game.save
      render json: @player_game, status: :created, location: @player_game
    else
      render json: @player_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_games/1
  def update
    if @player_game.update(player_game_params)
      render json: @player_game
    else
      render json: @player_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_games/1
  def destroy
    @player_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_game
      @player_game = PlayerGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_game_params
      params.require(:player_game).permit(:player_id, :game_id, :score)
    end
end
