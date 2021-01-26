class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    #No idea why this works and the if/else AND the simple bang operator didn't work but sure why not. 
    @student.save 
    #STOP FORGETTING TO SAVE YOUR UPDATES.
    redirect_to "/students/#{@student.id}"
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end