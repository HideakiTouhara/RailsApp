class PeopleController < ApplicationController
  layout 'people'

  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end

  def find
    @msg = 'please type search word...'
    @people = Array.new
    if request.post? then
      f = '%' + params[:find] + '%'
      @people = Person.where "name like ? or mail like ?", f, f
    end
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  #protect_from_forgery

  def create
    @person = Person.new person_params
    if @person.save then
      redirect_to '/people'
    else
      render 'add'
    end
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
