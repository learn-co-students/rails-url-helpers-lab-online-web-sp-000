class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
    @active_status = 
      if @student.active
        "This student is currently active."
      else
        "This student is currently inactive."
      end
  end

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end