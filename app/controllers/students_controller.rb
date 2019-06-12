class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(strong_params)
    redirect_to @student
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(strong_params)
    redirect_to @student
  end

  def strong_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
