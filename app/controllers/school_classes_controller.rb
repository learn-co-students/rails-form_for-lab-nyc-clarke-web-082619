class SchoolClassesController < ApplicationController

    def index
        @classes = SchoolClass.all 
        render :index 
    end 

    def new 
        @class = SchoolClass.new 
        render :new 
    end 

    def create
        @class = SchoolClass.create(strong_params)
        redirect_to @class
    end 

    def show 
        @class = SchoolClass.find(params[:id])
        render :show
    end 

    def edit
        @class = SchoolClass.find(params[:id])
        render :edit
    end 

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(strong_params)
        redirect_to school_class_path(@class)
    end 

    private 

    def strong_params
        params.require(:school_class).permit(:title, :room_number)
    end 
    
end
