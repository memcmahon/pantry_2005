class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
  end

  def ingredients
    @ingredients_required.keys

    # ingredients = []
    # @ingredients_required.each do |ingredient, amount| #two varibales |key, value|
    #   ingredients << ingredient
    # end
    # ingredients
  end

  def total_calories
    # total = 0
    # @ingredients_required.each do |ingredient, amount|
    #   total += ingredient.calories * amount
    # end
    # total

    @ingredients_required.sum do |ingredient, amount| # |key, value|
      ingredient.calories * amount
    end
  end
end
