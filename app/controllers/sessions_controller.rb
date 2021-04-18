class SessionsController < ApplicationController

  def welcome 
  end 

  def new
  end 

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    redirect_to user_path(@user)
    else
      flash[:error] = "Sorry, login info is incorrect, please try again."
      redirect_to login_path
  end 
end

def omniauth
  @user = User.from_omniauth(auth)
if @user.valid?
  session[:user_id] = @user.id
  redirect_to @user
else
  render :new
end 
end 

  def destroy
    session.clear
    redirect_to '/'
  end 
end

private 

 def auth
   request.env['omniauth.auth']
 end 



