class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Cocktail.doses(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_parameters)
    redirect_to action: "index"
  end

  private

  def cocktail_parameters
    params.require(:cocktail).permit(:name)
  end
end
