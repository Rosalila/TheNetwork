class ResourceTagsController < ApplicationController
  before_action :set_resource_tag, only: [:show, :edit, :update, :destroy]

  # GET /resource_tags
  # GET /resource_tags.json
  def index
    @resource_tags = ResourceTag.all
  end

  # GET /resource_tags/1
  # GET /resource_tags/1.json
  def show
  end

  # GET /resource_tags/new
  def new
    @resource_tag = ResourceTag.new
  end

  # GET /resource_tags/1/edit
  def edit
  end

  # POST /resource_tags
  # POST /resource_tags.json
  def create
    @resource_tag = ResourceTag.new(resource_tag_params)

    respond_to do |format|
      if @resource_tag.save
        format.html { redirect_to @resource_tag, notice: 'Resource tag was successfully created.' }
        format.json { render :show, status: :created, location: @resource_tag }
      else
        format.html { render :new }
        format.json { render json: @resource_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_tags/1
  # PATCH/PUT /resource_tags/1.json
  def update
    respond_to do |format|
      if @resource_tag.update(resource_tag_params)
        format.html { redirect_to @resource_tag, notice: 'Resource tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_tag }
      else
        format.html { render :edit }
        format.json { render json: @resource_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_tags/1
  # DELETE /resource_tags/1.json
  def destroy
    @resource_tag.destroy
    respond_to do |format|
      format.html { redirect_to resource_tags_url, notice: 'Resource tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_tag
      @resource_tag = ResourceTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_tag_params
      params.require(:resource_tag).permit(:resource_id, :tag_id)
    end
end
