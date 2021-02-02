class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    if @student.active == "false"
      @student.activate_student
    else
      @student.deactivate_student
    end
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end