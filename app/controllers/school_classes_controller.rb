class SchoolClassesController < ActionController::Base

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end

    def update 

    end

    def new 
        @school_class = SchoolClass.new        
    end

    def create
        redirect_to school_class_path(SchoolClass.create(school_class_params))
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end