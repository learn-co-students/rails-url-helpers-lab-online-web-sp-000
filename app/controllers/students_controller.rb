class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      Student.update(@student.id, active: false)
    else
      Student.update(@student.id, active: true)
    end
    redirect_to show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end