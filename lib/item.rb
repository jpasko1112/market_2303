class Item
  attr_reader :name,
              :price

  def initialize(stock)
    @name = stock[:name]
    @price = stock[:price].delete('$').to_f
  end
end