class EquipmentsController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      redirect_to @equipment
      else
      render 'new'
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

    def update
      @equipment = Equipment.find(params[:id])
   
    if @equipment.update(equipment_params)
      redirect_to @equipment
    else
      render 'edit'
    end
  end

    def destroy
      @equipment = Equipment.find(params[:id])
      @equipment.destroy

      redirect_to @equipment
    end

  private
  def equipment_params
    params.require(:equipment).permit(:code, :name, :quantity)
  end
end