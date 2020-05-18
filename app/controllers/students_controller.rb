class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    if @student.active 
      !@student.toggle(:active).save
    else  
      @student.toggle(:active).save
    end
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end