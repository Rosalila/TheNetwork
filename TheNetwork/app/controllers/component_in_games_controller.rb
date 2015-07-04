class ComponentInGamesController < ApplicationController
  before_action :set_component_in_game, only: [:show, :edit, :update, :destroy]

  # GET /component_in_games
  # GET /component_in_games.json
  def index
    @component_in_games = ComponentInGame.all
  end

  # GET /component_in_games/1
  # GET /component_in_games/1.json
  def show
  end

  # GET /component_in_games/new
  def new
    @component_in_game = ComponentInGame.new
  end

  # GET /component_in_games/1/edit
  def edit
  end

  # POST /component_in_games
  # POST /component_in_games.json
  def create
    @component_in_game = ComponentInGame.new(component_in_game_params)

    respond_to do |format|
      if @component_in_game.save
        format.html { redirect_to @component_in_game, notice: 'Component in game was successfully created.' }
        format.json { render :show, status: :created, location: @component_in_game }
      else
        format.html { render :new }
        format.json { render json: @component_in_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_in_games/1
  # PATCH/PUT /component_in_games/1.json
  def update
    respond_to do |format|
      if @component_in_game.update(component_in_game_params)
        format.html { redirect_to @component_in_game, notice: 'Component in game was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_in_game }
      else
        format.html { render :edit }
        format.json { render json: @component_in_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_in_games/1
  # DELETE /component_in_games/1.json
  def destroy
    @component_in_game.destroy
    respond_to do |format|
      format.html { redirect_to component_in_games_url, notice: 'Component in game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_in_game
      @component_in_game = ComponentInGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_in_game_params
      params.require(:component_in_game).permit(:component_id, :game_id)
    end
end
