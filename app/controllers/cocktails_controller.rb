class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end
  def create
    # params["cocktail"]["ingredient_ids"] => ingredient id
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def find
    search = params['search'].capitalize
    @cocktails = Cocktail.all
      .joins(:ingredients)
      .where("ingredients.name LIKE '%#{search}%'")
    puts @cocktail
    render :index, notice: search
  end
    # @cocktails = Cocktail.select("cocktails").joins(:ingredients).where("cocktails.name LIKE '#{search}'") 
  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
