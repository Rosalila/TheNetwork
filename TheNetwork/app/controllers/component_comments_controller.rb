class ComponentCommentsController < ApplicationController
  before_action :set_component_comment, only: [:show, :edit, :update, :destroy]

  # GET /component_comments
  # GET /component_comments.json
  def index
    @component_comments = ComponentComment.all
  end

  # GET /component_comments/1
  # GET /component_comments/1.json
  def show
  end

  # GET /component_comments/new
  def new
    @component_comment = ComponentComment.new
  end

  # GET /component_comments/1/edit
  def edit
  end

  # POST /component_comments
  # POST /component_comments.json
  def create
    @component_comment = ComponentComment.new(component_comment_params)

    respond_to do |format|
      if @component_comment.save
        format.html { redirect_to @component_comment, notice: 'Component comment was successfully created.' }
        format.json { render :show, status: :created, location: @component_comment }
      else
        format.html { render :new }
        format.json { render json: @component_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_comments/1
  # PATCH/PUT /component_comments/1.json
  def update
    respond_to do |format|
      if @component_comment.update(component_comment_params)
        format.html { redirect_to @component_comment, notice: 'Component comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_comment }
      else
        format.html { render :edit }
        format.json { render json: @component_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_comments/1
  # DELETE /component_comments/1.json
  def destroy
    @component_comment.destroy
    respond_to do |format|
      format.html { redirect_to component_comments_url, notice: 'Component comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_comment
      @component_comment = ComponentComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_comment_params
      params.require(:component_comment).permit(:component_id, :user_id, :comment)
    end
end
