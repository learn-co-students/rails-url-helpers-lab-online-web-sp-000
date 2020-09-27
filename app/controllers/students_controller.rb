require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # if students_path(activate)
      binding.pry
    #   @student.activate = true
    # end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end