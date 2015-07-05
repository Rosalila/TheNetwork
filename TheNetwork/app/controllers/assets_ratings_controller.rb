class AssetsRatingsController < ApplicationController
  before_action :set_assets_rating, only: [:show, :edit, :update, :destroy]

  # GET /assets_ratings
  # GET /assets_ratings.json
  def index
    @assets_ratings = AssetsRating.all
  end

  # GET /assets_ratings/1
  # GET /assets_ratings/1.json
  def show
  end

  # GET /assets_ratings/new
  def new
    @assets_rating = AssetsRating.new
  end

  # GET /assets_ratings/1/edit
  def edit
  end

  # POST /assets_ratings
  # POST /assets_ratings.json
  def create
    @assets_rating = AssetsRating.new(assets_rating_params)

    respond_to do |format|
      if @assets_rating.save
        format.html { redirect_to @assets_rating, notice: 'Assets rating was successfully created.' }
        format.json { render :show, status: :created, location: @assets_rating }
      else
        format.html { render :new }
        format.json { render json: @assets_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assets_ratings/1
  # PATCH/PUT /assets_ratings/1.json
  def update
    respond_to do |format|
      if @assets_rating.update(assets_rating_params)
        format.html { redirect_to @assets_rating, notice: 'Assets rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @assets_rating }
      else
        format.html { render :edit }
        format.json { render json: @assets_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets_ratings/1
  # DELETE /assets_ratings/1.json
  def destroy
    @assets_rating.destroy
    respond_to do |format|
      format.html { redirect_to assets_ratings_url, notice: 'Assets rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assets_rating
      @assets_rating = AssetsRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assets_rating_params
      params.require(:assets_rating).permit(:asset_id, :rating)
    end
end
