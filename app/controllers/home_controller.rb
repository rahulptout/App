class HomeController < ApplicationController
  def home_page
   @users = Home.all

  end
  
  def show
    @users = Home.find(params[:id])
    
  end

  def new
    @users = Home.new
    
  end

  def create
   @users = Home.new(users_params)

   if @users.save
       redirect_to @users
   
   else
    render :new
   end 
  end
 
  private
   def users_params
    params.require(:users).permit(:name, :email)
     
   end

end
