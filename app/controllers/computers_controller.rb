class ComputersController < ApplicationController

  def index
    @computers = Computer.all
    if params[:query].present?
      @computers = Computer.search_by(params[:query])
    end
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def new
    @computer = Computer.new
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.user = current_user
    if @computer.save
      redirect_to computer_path(@computer)
    end
  end

  def update
    @computer = Computer.find(params[:id])
    @computer.update(computers_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to computer_path(@computer)
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def destroy
    @computer = Computer.find(params[:id])
    @computer.destroy
    redirect_to computers_path, status: :see_other
  end

  private

  def computers_params
    params.require(:computer).permit(:name, :creation_year, :brand, :processor, :memory, :price_per_day, :availability_start_date, :availability_end_date, :operating_system, :image, :description)
  end

end
