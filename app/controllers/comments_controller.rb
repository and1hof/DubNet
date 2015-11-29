class CommentsController < ApplicationController
  before_action :set_Comment, only: [:show, :edit, :update, :destroy]

  # GET /Comments
  def index
    @comments = Comment.all
  end

  # GET /Comments/1
  def show
  end

  # GET /Comments/new
  def new
    @comment = Comment.new
  end

  # GET /Comments/1/edit
  def edit
  end

  # Comment /Comments
  def create
    @Comment = Comment.new(comment_params)
    respond_to do |format|
      if @Comment.save
        format.html { redirect_to :back, notice: 'Comment was successfully created.' }
      else
        redirect_to '/feed', notice: 'An error occured.'
      end
    end
  end

  # PATCH/PUT /Comments/1
  def update
    respond_to do |format|
      if @Comment.update(Comment_params)
        @Comment.user_id = current_user.id
        @Comment.save
        format.html { redirect_to '/', notice: 'Comment was successfully updated.' }
      else
        redirect_to '/feed', notice: 'An error occured.'
      end
    end
  end

  # DELETE /Comments/1
  def destroy
    @Comment.destroy
    respond_to do |format|
      format.html { redirect_to '/feed', notice: 'Comment was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Comment
      @Comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content)
    end
end
