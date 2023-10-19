class PeopleController < ApplicationController
  def index
    @people = Person.all.paginate(page: params[:page], per_page: 10)

    if params[:search].present?
      @people = @people.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    end

    @people = @people.order("#{params[:sort_column]} #{params[:sort_direction]}") if params[:sort_column].present?

    @people
  end
end
