class SchoolClassesController < ApplicationController
  def index
    @schoolclass = SchoolClass.all
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    # @schoolclass = SchoolClass.new
    # @schoolclass.title = params[:schoolclass][:title]
    # @schoolclass.room_number = params[:schoolclass][:room_number]
    # @schoolclass.save
    @schoolclass = SchoolClass.create(schoolclass_params)
    redirect_to @schoolclass
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find_by(id: params[:id])
    # @schoolclass.update(post_params[:title], post_params[:room_number])
    @schoolclass.update(schoolclass_params)
      redirect_to @schoolclass
  end

  private

  def schoolclass_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
