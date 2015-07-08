class GameCommentsController < ApplicationController
  before_action :set_game_comment, only: [:show, :edit, :update, :destroy]

  # GET /game_comments
  # GET /game_comments.json
  def index
    @game_comments = GameComment.all
  end

  # GET /game_comments/1
  # GET /game_comments/1.json
  def show
  end

  # GET /game_comments/new
  def new
    @game_comment = GameComment.new
  end

  # GET /game_comments/1/edit
  def edit
  end

  # POST /game_comments
  # POST /game_comments.json
  def create
    @game_comment = GameComment.new(game_comment_params)

    respond_to do |format|
      if @game_comment.save
        format.html { redirect_to @game_comment, notice: 'Game comment was successfully created.' }
        format.json { render :show, status: :created, location: @game_comment }
      else
        format.html { render :new }
        format.json { render json: @game_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_comments/1
  # PATCH/PUT /game_comments/1.json
  def update
    respond_to do |format|
      if @game_comment.update(game_comment_params)
        format.html { redirect_to @game_comment, notice: 'Game comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_comment }
      else
        format.html { render :edit }
        format.json { render json: @game_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_comments/1
  # DELETE /game_comments/1.json
  def destroy
    @game_comment.destroy
    respond_to do |format|
      format.html { redirect_to game_comments_url, notice: 'Game comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_comment
      @game_comment = GameComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_comment_params
      params.require(:game_comment).permit(:game_id, :user_id, :comment)
    end
end
