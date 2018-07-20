class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = Student.new(student_params(:title,:room_number))
    @school_class.save
	  redirect_to school_class_path(@school_class)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def student_params(*args)
    params.require(:school_class).permit(*args)
  end

end
