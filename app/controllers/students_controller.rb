class StudentsController < ActionController::Base

    def new
        @student = Student.new
    end
    
    def create 
        redirect_to student_path(Student.create(student_params))
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end