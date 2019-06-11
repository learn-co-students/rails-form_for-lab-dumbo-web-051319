class StudentsController < ApplicationController

  # def index
  #   @student = Student.all
  # end

  def new
    @student = Student.new
  end

  def create
    # @student = Student.new
    # @student.first_name = params[:student][:first_name]
    # @student.last_name = params[:student][:last_name]
    # @student.save
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.new
    # @student.update(student_params[:first_name],student_params[:last_name])
    @student.update(student_params)
    redirect_to @student                     #redirect to show page
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
