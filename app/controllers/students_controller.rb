class StudentsController < ApplicationController

    before_action :find_student, only: [:show, :edit, :update]
    def index
        @students = Student.all
        render :index
    end

    def new
        @student = Student.new
        render :new
    end

    def create
        @student = Student.create(params_student)
        redirect_to student_path(@student)
    end

    def edit    
        render :edit
    end

    def update
        @student.update(params_student)
        redirect_to student_path(@student)
    end

    private
    def find_student
        @student = Student.find(params[:id])
    end

    def params_student
        params.require(:student).permit(:first_name, :last_name)
    end


end
