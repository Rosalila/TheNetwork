class EngineCommentsController < ApplicationController
  before_action :set_engine_comment, only: [:show, :edit, :update, :destroy]

  # GET /engine_comments
  # GET /engine_comments.json
  def index
    @engine_comments = EngineComment.all
  end

  # GET /engine_comments/1
  # GET /engine_comments/1.json
  def show
  end

  # GET /engine_comments/new
  def new
    @engine_comment = EngineComment.new
  end

  # GET /engine_comments/1/edit
  def edit
  end

  # POST /engine_comments
  # POST /engine_comments.json
  def create
    @engine_comment = EngineComment.new(engine_comment_params)

    respond_to do |format|
      if @engine_comment.save
        format.html { redirect_to @engine_comment, notice: 'Engine comment was successfully created.' }
        format.json { render :show, status: :created, location: @engine_comment }
      else
        format.html { render :new }
        format.json { render json: @engine_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engine_comments/1
  # PATCH/PUT /engine_comments/1.json
  def update
    respond_to do |format|
      if @engine_comment.update(engine_comment_params)
        format.html { redirect_to @engine_comment, notice: 'Engine comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @engine_comment }
      else
        format.html { render :edit }
        format.json { render json: @engine_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_comments/1
  # DELETE /engine_comments/1.json
  def destroy
    @engine_comment.destroy
    respond_to do |format|
      format.html { redirect_to engine_comments_url, notice: 'Engine comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine_comment
      @engine_comment = EngineComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engine_comment_params
      params.require(:engine_comment).permit(:engine_id, :user_id, :comment)
    end
end
