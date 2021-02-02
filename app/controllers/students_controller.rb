class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate 
    activate_student
  end 

  def deactivate 
    deactivate_student
  end 
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
    
    def activate_student
      @student = Student.find(params[:id])
      @student.active = true
    end 
   
    def deactivate_student
      @student = Student.find(params[:id])
      @student.active = false
    end 

end