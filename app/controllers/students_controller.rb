class StudentsController < ApplicationController
  before_action :set_student, only: %i[show activate]

  def index
    @students = Student.all
  end

  def show; end

  def activate
    @student.change_status
    redirect_to students_path(@student).gsub('.', '/')
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end