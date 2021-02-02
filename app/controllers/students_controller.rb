class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end
  
  def create 
  end

  def show
  end
  
  def activate
    set_student
    activate_student
    redirect_to student_path(@student)
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
    
    def activate_student
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @student.save
    end 
   
    # def deactivate_student
    #   @student = Student.find(params[:id])
    #   @student.active = false
    #   @student.save
    # end 

end