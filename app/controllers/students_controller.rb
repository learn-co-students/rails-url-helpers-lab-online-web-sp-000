class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
      @student = Student.find(params[:id])
      is_active = @student.active
   if is_active
        @message = "This student is currently active."
      else
        @message = "This student is currently inactive."
      end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end