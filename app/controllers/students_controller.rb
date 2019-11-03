class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    #render :plain => "Hello World"
    @student = Student.find(params[:id])
      if @student.active == false
        @student.active = true 
        @student.save
      elsif @student.active == true
        @student.active = false
        @student.save
      end
     redirect_back fallback_location: { action: "show", id: @student.id }
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end