require 'date'

class CookBook
  attr_reader :recipes,
              :date

  def initialize
    @recipes = []
    @date = Date.today.strftime('%m-%d-%Y')
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    # ingredient_names = []
    # @recipes.each do |recipe|
    #   recipe.ingredients.each do |ingredient|
    #     ingredient_names << ingredient.name
    #   end
    # end
    # ingredient_names.uniq

    # ingredients = []
    # @recipes.each do |recipe|
    #   ingredients << recipe.ingredients
    # end
    # ingredient_names = []
    # ingredients.flatten.each do |ingredient|
    #   ingredient_names << ingredient.name
    # end
    # ingredient_names.uniq

    @recipes.flat_map do |recipe|
      recipe.ingredients.map do |ingredient|
        ingredient.name
      end
    end.uniq
  end

  def highest_calorie_meal
    # max_cal_meal = nil
    # @recipes.each do |recipe|
    #   if max_cal_meal.nil?
    #     max_cal_meal = recipe
    #   elsif max_cal_meal.total_calories <= recipe.total_calories
    #     max_cal_meal = recipe
    #   end
    # end
    # max_cal_meal

    # @recipes.sort_by do |recipe|
    #   recipe.total_calories
    # end.last

    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end
end
