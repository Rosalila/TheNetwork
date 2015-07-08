class EngineRatingsController < ApplicationController
  before_action :set_engine_rating, only: [:show, :edit, :update, :destroy]

  # GET /engine_ratings
  # GET /engine_ratings.json
  def index
    @engine_ratings = EngineRating.all
  end

  # GET /engine_ratings/1
  # GET /engine_ratings/1.json
  def show
  end

  # GET /engine_ratings/new
  def new
    @engine_rating = EngineRating.new
  end

  # GET /engine_ratings/1/edit
  def edit
  end

  # POST /engine_ratings
  # POST /engine_ratings.json
  def create
    @engine_rating = EngineRating.new(engine_rating_params)

    respond_to do |format|
      if @engine_rating.save
        format.html { redirect_to @engine_rating, notice: 'Engine rating was successfully created.' }
        format.json { render :show, status: :created, location: @engine_rating }
      else
        format.html { render :new }
        format.json { render json: @engine_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engine_ratings/1
  # PATCH/PUT /engine_ratings/1.json
  def update
    respond_to do |format|
      if @engine_rating.update(engine_rating_params)
        format.html { redirect_to @engine_rating, notice: 'Engine rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @engine_rating }
      else
        format.html { render :edit }
        format.json { render json: @engine_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_ratings/1
  # DELETE /engine_ratings/1.json
  def destroy
    @engine_rating.destroy
    respond_to do |format|
      format.html { redirect_to engine_ratings_url, notice: 'Engine rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine_rating
      @engine_rating = EngineRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engine_rating_params
      params.require(:engine_rating).permit(:engine_id, :rating)
    end
end
