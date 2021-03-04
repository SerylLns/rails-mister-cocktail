class DosesController < ApplicationController

  # def index
  # end
  def new
    @cocktail = Cocktail.find(params["cocktail_id"])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params["cocktail_id"])
    # @ingredient = Ingredient.find(dose_params["ingredient_id"])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save 
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def destroy
    dose = Dose.find(params[:id])
    Dose.destroy(dose.id)
    redirect_to cocktail_path(dose.cocktail)
  end
  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
