class ActivateStudentsController < ApplicationController
    def show

        @student = Student.find(params[:id])
        if @student.active
          @student.active = false
          @student.save
          @student
        else
          @student.active = true
          @student.save
          @student
        
      end
      redirect_to "/students/#{@student.id}"
    end
end
