class AssetCommentsController < ApplicationController
  before_action :set_asset_comment, only: [:show, :edit, :update, :destroy]

  # GET /asset_comments
  # GET /asset_comments.json
  def index
    @asset_comments = AssetComment.all
  end

  # GET /asset_comments/1
  # GET /asset_comments/1.json
  def show
  end

  # GET /asset_comments/new
  def new
    @asset_comment = AssetComment.new
  end

  # GET /asset_comments/1/edit
  def edit
  end

  # POST /asset_comments
  # POST /asset_comments.json
  def create
    @asset_comment = AssetComment.new(asset_comment_params)

    respond_to do |format|
      if @asset_comment.save
        format.html { redirect_to @asset_comment, notice: 'Asset comment was successfully created.' }
        format.json { render :show, status: :created, location: @asset_comment }
      else
        format.html { render :new }
        format.json { render json: @asset_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_comments/1
  # PATCH/PUT /asset_comments/1.json
  def update
    respond_to do |format|
      if @asset_comment.update(asset_comment_params)
        format.html { redirect_to @asset_comment, notice: 'Asset comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_comment }
      else
        format.html { render :edit }
        format.json { render json: @asset_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_comments/1
  # DELETE /asset_comments/1.json
  def destroy
    @asset_comment.destroy
    respond_to do |format|
      format.html { redirect_to asset_comments_url, notice: 'Asset comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_comment
      @asset_comment = AssetComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_comment_params
      params.require(:asset_comment).permit(:asset_id, :user_id, :comment)
    end
end
