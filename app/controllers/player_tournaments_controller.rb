class PlayerTournamentsController < ApplicationController
  before_action :set_player_tournament, only: [:show, :update, :destroy]

  # GET /player_tournaments
  def index
    @player_tournaments = PlayerTournament.all

    render json: @player_tournaments
  end

  # GET /player_tournaments/1
  def show
    render json: @player_tournament
  end

  # POST /player_tournaments
  def create
    @player_tournament = PlayerTournament.new(player_tournament_params)

    if @player_tournament.save
      render json: @player_tournament, status: :created, location: @player_tournament
    else
      render json: @player_tournament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_tournaments/1
  def update
    if @player_tournament.update(player_tournament_params)
      render json: @player_tournament
    else
      render json: @player_tournament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_tournaments/1
  def destroy
    @player_tournament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_tournament
      @player_tournament = PlayerTournament.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_tournament_params
      params.require(:player_tournament).permit(:player_id, :tournament_id)
    end
end
