class ResourceCommentsController < ApplicationController
  before_action :set_resource_comment, only: [:show, :edit, :update, :destroy]

  # GET /resource_comments
  # GET /resource_comments.json
  def index
    @resource_comments = ResourceComment.all
  end

  # GET /resource_comments/1
  # GET /resource_comments/1.json
  def show
  end

  # GET /resource_comments/new
  def new
    @resource_comment = ResourceComment.new
  end

  # GET /resource_comments/1/edit
  def edit
  end

  # POST /resource_comments
  # POST /resource_comments.json
  def create
    @resource_comment = ResourceComment.new(resource_comment_params)

    respond_to do |format|
      if @resource_comment.save
        format.html { redirect_to @resource_comment, notice: 'Resource comment was successfully created.' }
        format.json { render :show, status: :created, location: @resource_comment }
      else
        format.html { render :new }
        format.json { render json: @resource_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_comments/1
  # PATCH/PUT /resource_comments/1.json
  def update
    respond_to do |format|
      if @resource_comment.update(resource_comment_params)
        format.html { redirect_to @resource_comment, notice: 'Resource comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_comment }
      else
        format.html { render :edit }
        format.json { render json: @resource_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_comments/1
  # DELETE /resource_comments/1.json
  def destroy
    @resource_comment.destroy
    respond_to do |format|
      format.html { redirect_to resource_comments_url, notice: 'Resource comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_comment
      @resource_comment = ResourceComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_comment_params
      params.require(:resource_comment).permit(:resource_id, :user_id, :comment)
    end
end
