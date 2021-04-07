module ApplicationHelper
    def active?
        @student = set_student
        if @student.active == "true"
          puts "active"
        else
          puts "inactive"
        end
      end
end
