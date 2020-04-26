class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def active?
    # binding.pry
    @student.active ? "active" : "inactive"
  end

  def index
    @students = Student.all
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
