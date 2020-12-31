class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :activate, :update]
  skip_before_action :verify_authenticity_token
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.active ? @student.update(active: false) : @student.update(active: true)
    redirect_to student_path(@student)
  end

  def update
    redirect_to student_path(@student)
  end

  #def edit
    #render 'students/activate.html.erb'
  #end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end