class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
   
  end

  def activate_student

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

#     Prefix Verb       URI Pattern             Controller#Action
#    students GET    /students(.:format)          students#index
#             POST   /students(.:format)          students#create
# new_student GET    /students/new(.:format)      students#new
# edit_student GET   /students/:id/edit(.:format) students#edit
#     student GET    /students/:id(.:format)      students#show
#             PATCH  /students/:id(.:format)      students#update
#             PUT    /students/:id(.:format)      students#update
#             DELETE /students/:id(.:format)      students#destroy


# activate_student_index GET    /activate_student(.:format)          activate_student#index
#                        POST   /activate_student(.:format)          activate_student#create
#   new_activate_student GET    /activate_student/new(.:format)      activate_student#new
#  edit_activate_student GET    /activate_student/:id/edit(.:format) activate_student#edit
#       activate_student GET    /activate_student/:id(.:format)      activate_student#show
#                        PATCH  /activate_student/:id(.:format)      activate_student#update
#                        PUT    /activate_student/:id(.:format)      activate_student#update
#                        DELETE /activate_student/:id(.:format)      activate_student#destroy