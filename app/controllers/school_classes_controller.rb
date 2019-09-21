class SchoolClassesController < ApplicationController
    before_action :find_class, only: [:show, :edit, :update, :destroy]
    def index 
        @schoolclasses = SchoolClass.all
    end

    def new 
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.create(class_params)
        redirect_to school_class_path(@schoolclass)
    end

    def show
    
    end

    def edit

    end

    def update
        @schoolclass.update(class_params)
        redirect_to school_class_path(@schoolclass)
    end
    
    def destroy
        @schoolclass.destroy
        redirect_to school_classes_path
    end

    private
    
    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_class
        @schoolclass = SchoolClass.find(params[:id])
    end
end
