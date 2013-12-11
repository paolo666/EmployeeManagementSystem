class EmployeesController < ApplicationController
	def index
		@emp = Employee.all
	end
    def new
    	@emp = Employee.new
    end
	def create
		@emp = Employee.new(emp_params)

		if @emp.save
		  redirect_to @emp
	    else
		  render 'new'
		end
	end

    def show    	
    	@emp = Employee.find(params[:id])
    end

    def edit
    	@emp = Employee.find(params[:id])
    end

    def destroy
    	@emp = Employee.find(params[:id])
    	@emp.destroy

    	redirect_to @emp
    end

    def update
  		@emp = Employee.find(params[:id])
	 
	  if @emp.update(emp_params)
	    redirect_to @emp
	  else
	    render 'edit'
	  end
	end

	private
	    def emp_params
	    	params.require(:employee).permit(:firstName, :middleName, :lastName, :gender, :birthday, :code)
	    end
end
