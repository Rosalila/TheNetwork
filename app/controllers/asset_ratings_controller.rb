class AssetRatingsController < ApplicationController
  before_action :set_asset_rating, only: [:show, :edit, :update, :destroy]

  # GET /asset_ratings
  # GET /asset_ratings.json
  def index
    @asset_ratings = AssetRating.all
  end

  # GET /asset_ratings/1
  # GET /asset_ratings/1.json
  def show
  end

  # GET /asset_ratings/new
  def new
    @asset_rating = AssetRating.new
  end

  # GET /asset_ratings/1/edit
  def edit
  end

  # POST /asset_ratings
  # POST /asset_ratings.json
  def create
    @asset_rating = AssetRating.new(asset_rating_params)

    respond_to do |format|
      if @asset_rating.save
        format.html { redirect_to @asset_rating, notice: 'Asset rating was successfully created.' }
        format.json { render :show, status: :created, location: @asset_rating }
      else
        format.html { render :new }
        format.json { render json: @asset_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_ratings/1
  # PATCH/PUT /asset_ratings/1.json
  def update
    respond_to do |format|
      if @asset_rating.update(asset_rating_params)
        format.html { redirect_to @asset_rating, notice: 'Asset rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_rating }
      else
        format.html { render :edit }
        format.json { render json: @asset_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_ratings/1
  # DELETE /asset_ratings/1.json
  def destroy
    @asset_rating.destroy
    respond_to do |format|
      format.html { redirect_to asset_ratings_url, notice: 'Asset rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_rating
      @asset_rating = AssetRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_rating_params
      params.require(:asset_rating).permit(:asset_id, :rating)
    end
end
