class ReviewsController < ApplicationController
   
   before_action :find_restaurant
   before_action :find_review, only: [:edit, :update, :destroy]
   
    def new
     @review = Review.new
    end
    
    def index
      if params[:restaurant_id] && @restaurant = Restaurant.find_by_id(params[:restaurant_id])
        @reviews = @restaurant.reviews
    else
      @reviews = Review.all
    end 
  end 

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    current_user.reviews << @review
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end 
  end 

  def edit
  end 

  def update
    if @review.update(review_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
  end 
end 

def destroy
  @review.destroy
  redirect_to restaurant_path(@restaurant)
end 


    private
    def review_params
        params.require(:review).permit(:date, :rating, :comment, :category, :image)
    end 

    def find_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end 

    def find_review
      @review = Review.find(params[:id])
    end 

end
