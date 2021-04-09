class SessionsController < ApplicationController

  def welcome 
  end 

  def new
  end 

  def create
    @owner = Owner.find_by(email: params[:owner][:email])
    if @owner && @owner.authenticate(params[:owner][:password])
      session[:owner_id] = @owner.id
    redirect_to owner_path(@owner)
    else
      flash[:error] = "Sorry, login info is incorrect, please try again."
      redirect_to login_path
  end 
end

  def destroy
    session.clear
    redirect_to '/'
  end 
end 


