class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    dose = @cocktail.doses.build(dose_parameters)
    dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private


  def dose_parameters
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
