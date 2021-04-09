class OwnersController < ApplicationController
    
    def new
        @owner = Owner.new
    end 
    
    def create
      @owner = Owner.new(owner_params)
      if @owner.save
        session[:owner_id] = @owner.id
        redirect_to owner_path(@owner)
      else 
        render :new
    end 
 end  

    def show
        redirect_if_not_logged_in
        @owner = Owner.find_by(id: params[:id])
        redirect_to '/' if !@owner
    end 

    

    private 

    def owner_params
        params.require(:owner).permit(:first_name, :last_name, :email, :password)
    end 

end 