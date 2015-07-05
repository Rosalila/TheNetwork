class EngineTagsController < ApplicationController
  before_action :set_engine_tag, only: [:show, :edit, :update, :destroy]

  # GET /engine_tags
  # GET /engine_tags.json
  def index
    @engine_tags = EngineTag.all
  end

  # GET /engine_tags/1
  # GET /engine_tags/1.json
  def show
  end

  # GET /engine_tags/new
  def new
    @engine_tag = EngineTag.new
  end

  # GET /engine_tags/1/edit
  def edit
  end

  # POST /engine_tags
  # POST /engine_tags.json
  def create
    @engine_tag = EngineTag.new(engine_tag_params)

    respond_to do |format|
      if @engine_tag.save
        format.html { redirect_to @engine_tag, notice: 'Engine tag was successfully created.' }
        format.json { render :show, status: :created, location: @engine_tag }
      else
        format.html { render :new }
        format.json { render json: @engine_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engine_tags/1
  # PATCH/PUT /engine_tags/1.json
  def update
    respond_to do |format|
      if @engine_tag.update(engine_tag_params)
        format.html { redirect_to @engine_tag, notice: 'Engine tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @engine_tag }
      else
        format.html { render :edit }
        format.json { render json: @engine_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_tags/1
  # DELETE /engine_tags/1.json
  def destroy
    @engine_tag.destroy
    respond_to do |format|
      format.html { redirect_to engine_tags_url, notice: 'Engine tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine_tag
      @engine_tag = EngineTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engine_tag_params
      params.require(:engine_tag).permit(:engine_id, :tag_id)
    end
end
