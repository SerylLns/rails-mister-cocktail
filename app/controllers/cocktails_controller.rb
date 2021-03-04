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
    search = params['search'].downcase
    allcocktails = Cocktail.all
    @cocktails = allcocktails.select {|cocktail| cocktail.name.downcase.match(search)} # Faire mieux
    # @cocktails = Cocktail.where("name LIKE '%#{params["search"]}%'")
    render :index
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end
end
