class SchoolClassController < ActionController::Base

  def index
    @student_classes = StudentClass.all
  end

  def show
    @student_class = StudentClass.find_by(id: params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.create(school_class_params(:title, :roomnumber))
    redirect_to "/school_classes/#{school_class.id}"
  end

  def edit
		@school_class = SchoolClass.find_by(id: params[:id])
	end

 	def update
		@school_class = SchoolClass.find_by(id: params[:id])
		@school_class.update(school_class_params(:title, :room_number))
		redirect_to school_class_path
	end
end
