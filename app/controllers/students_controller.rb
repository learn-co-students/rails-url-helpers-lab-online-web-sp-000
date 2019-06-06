class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @message = "This student is currently inactive." if !@student.active
    @message = "This student is currently active." if @student.active
  end

  def activate
    @student = Student.find(params[:id])
    @student.toggle
    @student.save
    @message = "This student is now inactive." if !@student.active
    @message = "This student is now active." if @student.active
    redirect_to student_path(@student.id)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
