class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item_being_checked)
    @inventory[item_being_checked] || 0
  end

  def stock(item_being_stocked, quantity)
    @inventory[item_being_stocked] ||= 0
    @inventory[item_being_stocked] += quantity
  end

  def potential_revenue
    inventory.sum { |item, quantity| item.price * quantity }
  end
end