class PersonController < ApplicationController
  def index
    @people = Person.all

  end

  def show
   @people = Person.find(params[:id])
    
  end

  def new
    @people  = Person.new
  end

  def create
    @people = Person.new(people_params)

    if @people.save
      redirect_to @people

    else
      render :new
    end
  end

  private
  def people_params
    params.require(:people).permit(:name, :email)

  end

  
end
