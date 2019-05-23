class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :edit]

  def index
    @students = Student.all
  end

  def show
    if @student.active then @status = "active" else @status = "inactive" end
  end

  def edit
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
