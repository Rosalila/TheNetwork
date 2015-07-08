class ComponentTagsController < ApplicationController
  before_action :set_component_tag, only: [:show, :edit, :update, :destroy]

  # GET /component_tags
  # GET /component_tags.json
  def index
    @component_tags = ComponentTag.all
  end

  # GET /component_tags/1
  # GET /component_tags/1.json
  def show
  end

  # GET /component_tags/new
  def new
    @component_tag = ComponentTag.new
  end

  # GET /component_tags/1/edit
  def edit
  end

  # POST /component_tags
  # POST /component_tags.json
  def create
    @component_tag = ComponentTag.new(component_tag_params)

    respond_to do |format|
      if @component_tag.save
        format.html { redirect_to @component_tag, notice: 'Component tag was successfully created.' }
        format.json { render :show, status: :created, location: @component_tag }
      else
        format.html { render :new }
        format.json { render json: @component_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_tags/1
  # PATCH/PUT /component_tags/1.json
  def update
    respond_to do |format|
      if @component_tag.update(component_tag_params)
        format.html { redirect_to @component_tag, notice: 'Component tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_tag }
      else
        format.html { render :edit }
        format.json { render json: @component_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_tags/1
  # DELETE /component_tags/1.json
  def destroy
    @component_tag.destroy
    respond_to do |format|
      format.html { redirect_to component_tags_url, notice: 'Component tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_tag
      @component_tag = ComponentTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_tag_params
      params.require(:component_tag).permit(:component_id, :tag_id)
    end
end
