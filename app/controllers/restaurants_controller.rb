class RestaurantsController < ApplicationController

    before_action :redirect_if_not_logged_in
    before_action :find_restaurant, only: [:show, :edit, :update, :destroy]


    def index
        if params[:category].blank?
          @restaurants = Restaurant.all
        else
         @category_id = Category.find_by(name: params[:category]).id
         @restaurants = Restaurant.where(:category_id => @category_id).order("created_at DESC")
    end 
 end 

    def show   
    end 

    def new
        @restaurant = Restaurant.new
        @categories = Category.all.map{|c| [c.name, c.id] }
    end  


    def create    
    @restaurant = current_user.restaurants.build(restaurant_params)
    @restaurant.category_id = params[:category_id]
    if @restaurant.save
        redirect_to restaurants_path
    else
        render :new
    end 
end 


def edit
   @categories = Category.all.map{|c| [c.name, c.id] }
end 

def update
    @restaurant.category_id = params[:category_id]
    if @restaurant.update(restaurant_params)
     redirect_to restaurant_path(@restaurant)
    else
    render :edit
  end 
end 

def destroy
    @restaurant.destroy
    redirect_to '/'
 end 


 

private
    def restaurant_params 
        params.require(:restaurant).permit(:name, :image, :city, :country, :website, :category_id)
    end 



def find_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
end 

end 
