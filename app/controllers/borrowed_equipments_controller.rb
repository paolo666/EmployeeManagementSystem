class BorrowedEquipmentsController < ApplicationController
  def create
    @employee = Employee.find(params[:employee_id])
    @borrowed_eq = redirect_to employees_path
  end
end