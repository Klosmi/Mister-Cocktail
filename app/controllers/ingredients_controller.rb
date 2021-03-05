class IngredientsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @dose = Dose.new
      render "cocktail/show"
    end
  end

  private

  def ingredient_params
    # The require method ensures that a specific parameter is present, and if it's not provided, the require method throws an error.
    # It returns an instance of ActionController::Parameters for the key passed into require. The permit method returns a copy of the parameters object, returning only the permitted keys and values. When creating a new ActiveRecord model, only the permitted attributes are passed into the model.
    @ingredient = Cocktail.find(params[:cocktail_id])
  end

end
