class Pantry
  attr_reader :stock

  def initialize
    # @stock = {} #keys of ingredients, values of amount
    @stock = Hash.new(0) #default value of 0 instead of nil
  end

  def stock_check(ingredient)
    # # if @stock[ingredient] == nil
    # if @stock[ingredient].nil?
    #   0
    # else
    #   @stock[ingredient]
    # end

    @stock[ingredient]
  end

  def restock(ingredient, amount)
    # if @stock[ingredient] == nil
    #   @stock[ingredient] = amount
    # else
    #   @stock[ingredient] += amount
    # end

    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient, amount|
      @stock[ingredient] >= amount
    end
  end
end
