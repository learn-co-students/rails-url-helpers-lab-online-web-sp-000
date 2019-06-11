class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    set_student
    if @student.active == true
      @student.active = false
    else

      @student.active = true
    end
    @student.save
    # redirect_to "/students/#{params[:id]}"
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end