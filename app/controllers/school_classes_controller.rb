class SchoolClassesController < ApplicationController
    before_action :find_class, only: [:edit, :update, :show]


    def index
        @school_classes = SchoolClass.all
        render :index
    end

    def new
        @school_class = SchoolClass.new
        render :new
    end

    def create
        @school_class = SchoolClass.create(params_class)
        redirect_to school_class_path(@school_class)
    end

    def edit    
        render :edit
    end

    def update
        @school_class.update(params_class)
        redirect_to school_class_path(@school_class)
    end

    def show
        render :show
    end

    private
    def find_class
        @school_class = SchoolClass.find(params[:id])
    end

    def params_class
        params.require(:school_class).permit(:title, :room_number)
    end
end
