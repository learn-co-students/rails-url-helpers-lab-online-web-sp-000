class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @status = "inactive"
    if @student.active == true
      @status = "active"
    end
  end

  def activate
    @student = Student.find(params[:id])
    case @student.active
    when true
      @student.update(active: false)
    when false
      @student.update(active: true)
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end