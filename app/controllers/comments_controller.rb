class CommentsController < ApplicationController
   def index
    @comments = Comment.all.order(:name)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:content, :restaurant_id))
    if @comment.save
      redirect_to restaurant_path(@comment.restaurant)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params.require(:comment).permit(:content, :restaurant_id))
    if @comment.save
      redirect_to restaurant_path(@comment.restaurant)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

end
