class EnrollmentsController < ApplicationController
    def index 
        @enrollment = Enrollment.all 
    end

    def new 
    @enrollment = Enrollment.new 
    @users = User.all 
    @programs = Program.all 
    end 

    def create
    enrollment = Enrollment.create(enrollment_params)
    redirect_to enrollment_path(enrollment) 
    end
    
    def show 
     @enrollment = Enrollment.find(params[:id])
    end
    
    private 
    def enrollment_params(*args)
        params.require(:enrollment).permit!
    end

end
