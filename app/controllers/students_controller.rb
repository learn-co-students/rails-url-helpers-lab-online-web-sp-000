class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  # activate method
  # with #set_student I set the @student instance variable that's found by :id
  # i then toggle 'active' Student instance method with 'toggle' rails/activerecord method
  # Save the instance to redirect to that student instance (:id) show page
  def activate
    set_student
    @student.toggle(:active).save
    redirect_to show
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end