class StudentsController < ApplicationController

    def index 
        @students = Student.all 
        render :index 
    end 

    def new 
        @student = Student.new 
        render :new 
    end 

    def create
        @student = Student.create(strong_params)
        redirect_to student_path(@student)
    end 

    def show 
        @student = Student.find(params[:id])
        render :show
    end 

    def edit
        @student = Student.find(params[:id])
        render :edit 
    end 

    def update
        @student = Student.find(params[:id])
        @student.update(strong_params)
        redirect_to student_path(@student)
    end 

    private 

    def strong_params
        params.require(:student).permit(:first_name, :last_name)
    end 

end
