class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def create
    @product = Product.find(params[:product_id])
    @comment = @Product.Comments.new(comment_params)
    @comment.user = current_user
    
    @comment.save
    respond_with(@comment)
  end


  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:link_id, :body, :user_id)
    end
end
