class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    #binding.pry
    if @student.save
      redirect_to student_path(@student)
    else
      redirect_to new_student_path
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

end
