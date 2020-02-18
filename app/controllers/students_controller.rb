class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    @student = Student.find(params[:id])
    if ActiveModel::Type::Boolean.new.cast(@student.active)
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to :action => "show", :id => @student.id
  end

  def show
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  
end