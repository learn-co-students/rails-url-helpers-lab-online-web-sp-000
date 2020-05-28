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
    @student.toggle(:active).save
    #dope little method but... does it skip validation?
    redirect_to student_path(@student)
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
