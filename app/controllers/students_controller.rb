class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # binding.pry
    @student = Student.find(params[:id])
    @student.active = !@student.active
    # if params[:action] == "activate"
    #   @student.active = true
    # end
    @student.save
    redirect_to "/students/#{params[:id]}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end