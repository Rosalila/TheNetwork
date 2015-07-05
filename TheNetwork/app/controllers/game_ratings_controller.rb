class GameRatingsController < ApplicationController
  before_action :set_game_rating, only: [:show, :edit, :update, :destroy]

  # GET /game_ratings
  # GET /game_ratings.json
  def index
    @game_ratings = GameRating.all
  end

  # GET /game_ratings/1
  # GET /game_ratings/1.json
  def show
  end

  # GET /game_ratings/new
  def new
    @game_rating = GameRating.new
  end

  # GET /game_ratings/1/edit
  def edit
  end

  # POST /game_ratings
  # POST /game_ratings.json
  def create
    @game_rating = GameRating.new(game_rating_params)

    respond_to do |format|
      if @game_rating.save
        format.html { redirect_to @game_rating, notice: 'Game rating was successfully created.' }
        format.json { render :show, status: :created, location: @game_rating }
      else
        format.html { render :new }
        format.json { render json: @game_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_ratings/1
  # PATCH/PUT /game_ratings/1.json
  def update
    respond_to do |format|
      if @game_rating.update(game_rating_params)
        format.html { redirect_to @game_rating, notice: 'Game rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_rating }
      else
        format.html { render :edit }
        format.json { render json: @game_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_ratings/1
  # DELETE /game_ratings/1.json
  def destroy
    @game_rating.destroy
    respond_to do |format|
      format.html { redirect_to game_ratings_url, notice: 'Game rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_rating
      @game_rating = GameRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_rating_params
      params.require(:game_rating).permit(:game_id, :rating)
    end
end
