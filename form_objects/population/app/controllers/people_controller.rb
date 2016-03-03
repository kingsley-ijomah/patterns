class PeopleController < ApplicationController
  def new
    @person = CreatePersonForm.new
  end

  def create
    if CreatePersonForm.new(params[:person]).save  
      redirect_to new_person_url 
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end
end
