class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id]) #find our specific student
    @student.active = !@student.active #set our status to the opposite of whatever it currently is (ex. true would become false)
    @student.save #We save the paramters for this student
    redirect_to student_path(@student) #finally, redirect the user back to the student's show page
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end