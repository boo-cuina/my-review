class ReviewsController < ApplicationController

  def index
  end
  
  def new 
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path, notice: "レビューを投稿しました。"
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to review_path(@review), notice: "レビューを更新しました。"
    else
      render :edit
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to root_path, notice: "レビューを削除しました"
  end

  private
  def review_params
    params.require(:review).permit(:item, :review, )
  end
end
