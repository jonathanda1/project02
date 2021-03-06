class CommentsController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :only_my_comments, only: [:edit, :update, :destroy]


   def index
    @comments = Comment.all.order(:name)
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:content, :restaurant_id, :image))
    @comment.user = current_user
    if @comment.save
      redirect_to restaurant_path(@comment.restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @comment.update_attributes(params.require(:comment).permit(:content, :restaurant_id, :image))
    if @comment.save
      redirect_to restaurant_path(@comment.restaurant)
    else
      render :new
    end
  end

  def destroy
    @comment.user = current_user
    @comment.destroy
    redirect_to restaurants_path
  end

private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def only_my_comments
      redirect_to root_path, notice: "You can only alter your own comments." if (current_user != @comment.user)
  end


end
