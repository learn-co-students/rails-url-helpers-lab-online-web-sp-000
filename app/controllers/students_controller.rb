require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    student_status = set_student.active
    if student_status
      @status_message = "This student is currently active."
    else
      @status_message = "This student is currently inactive."
    end
  end

  def edit
    student = set_student
    student.active = !student.active
    student.save
    binding.pry
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end