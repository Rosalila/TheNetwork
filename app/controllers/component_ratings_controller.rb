class ComponentRatingsController < ApplicationController
  before_action :set_component_rating, only: [:show, :edit, :update, :destroy]

  # GET /component_ratings
  # GET /component_ratings.json
  def index
    @component_ratings = ComponentRating.all
  end

  # GET /component_ratings/1
  # GET /component_ratings/1.json
  def show
  end

  # GET /component_ratings/new
  def new
    @component_rating = ComponentRating.new
  end

  # GET /component_ratings/1/edit
  def edit
  end

  # POST /component_ratings
  # POST /component_ratings.json
  def create
    @component_rating = ComponentRating.new(component_rating_params)

    respond_to do |format|
      if @component_rating.save
        format.html { redirect_to @component_rating, notice: 'Component rating was successfully created.' }
        format.json { render :show, status: :created, location: @component_rating }
      else
        format.html { render :new }
        format.json { render json: @component_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_ratings/1
  # PATCH/PUT /component_ratings/1.json
  def update
    respond_to do |format|
      if @component_rating.update(component_rating_params)
        format.html { redirect_to @component_rating, notice: 'Component rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_rating }
      else
        format.html { render :edit }
        format.json { render json: @component_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_ratings/1
  # DELETE /component_ratings/1.json
  def destroy
    @component_rating.destroy
    respond_to do |format|
      format.html { redirect_to component_ratings_url, notice: 'Component rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_rating
      @component_rating = ComponentRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_rating_params
      params.require(:component_rating).permit(:component_id, :rating)
    end
end
