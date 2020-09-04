class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    @student.active ? @status = 'active' : @status = 'inactive'
  end

  def activate
    if @student.active
      @student.update(active: false)
      @status = 'inactive'
    else
      @student.update(active: true)
      @status = 'active'
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end