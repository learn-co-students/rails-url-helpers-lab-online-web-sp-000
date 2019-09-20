class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def toggle_activate
    @student = set_student
    new_state = !@student.active
    @student.update(active: new_state)
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
