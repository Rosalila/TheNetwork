class GameTagsController < ApplicationController
  before_action :set_game_tag, only: [:show, :edit, :update, :destroy]

  # GET /game_tags
  # GET /game_tags.json
  def index
    @game_tags = GameTag.all
  end

  # GET /game_tags/1
  # GET /game_tags/1.json
  def show
  end

  # GET /game_tags/new
  def new
    @game_tag = GameTag.new
  end

  # GET /game_tags/1/edit
  def edit
  end

  # POST /game_tags
  # POST /game_tags.json
  def create
    @game_tag = GameTag.new(game_tag_params)

    respond_to do |format|
      if @game_tag.save
        format.html { redirect_to @game_tag, notice: 'Game tag was successfully created.' }
        format.json { render :show, status: :created, location: @game_tag }
      else
        format.html { render :new }
        format.json { render json: @game_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_tags/1
  # PATCH/PUT /game_tags/1.json
  def update
    respond_to do |format|
      if @game_tag.update(game_tag_params)
        format.html { redirect_to @game_tag, notice: 'Game tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_tag }
      else
        format.html { render :edit }
        format.json { render json: @game_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_tags/1
  # DELETE /game_tags/1.json
  def destroy
    @game_tag.destroy
    respond_to do |format|
      format.html { redirect_to game_tags_url, notice: 'Game tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_tag
      @game_tag = GameTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_tag_params
      params.require(:game_tag).permit(:game_id, :tag_id)
    end
end
