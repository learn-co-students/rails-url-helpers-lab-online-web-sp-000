class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # comments show alternative options 
    @student = Student.find(params[:id])
    # if @student.active == false
    #   @student.active = true
    # else
    #   @student.active = false
    # end
    # @student.save
    @student.active = !@student.active
    @student.save
    # redirect_to action: "show"
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end