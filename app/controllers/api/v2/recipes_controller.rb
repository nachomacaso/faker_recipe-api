class Api::V2::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.create(meat: params[:meat],
                            ingredient: params[:ingredient],
                            vegetable: params[:vegetable],
                            spice: params[:spice],
                            measurement: params[:measurement],
                            cook_time: params[:cook_time],
                            instructions: params[:instructions])

    render 'show.json.jbuilder'
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update(meat: params[:meat] || @recipe.meat,
                   ingredient: params[:ingredient] || @recipe.ingredient,
                   vegetable: params[:vegetable] || @recipe.vegetable,
                   spice: params[:spice] || @recipe.spice,
                   measurement: params[:measurement] || @recipe.measurement,
                   cook_time: params[:cook_time] || @recipe.cook_time,
                   instructions: params[:instructions] || @recipe.instructions)

    redirect_to "/recipes/#{@recipe.id}.json"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    render json: {message: "employee deleted"}
  end
end
