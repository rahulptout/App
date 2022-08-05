class PersonController < ApplicationController

  layout 'admin'
  def index
    @person = Person.all

  end

  def show
    @person = Person.find(params[:id])

  end

  def new
    @person= Person.new
  end

  def create
    @person = Person.new(people_params)

    if @p.save
      flash[:notice] = 'Subject Created Successfully....'
      redirect_to (@person)

    else
      render :new

    end
  end

  private

  def people_params
    params.require(:person).permit(:name, :email, :mobile, :date_of_birth, :blood_group)

  end


end
