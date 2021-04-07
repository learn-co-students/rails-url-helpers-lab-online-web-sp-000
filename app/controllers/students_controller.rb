class StudentsController < ApplicationController
  before_action :set_student, only: :show
  include ApplicationHelper
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @student = set_student
    @student.toggle!(:active)
    redirect to student_path(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end