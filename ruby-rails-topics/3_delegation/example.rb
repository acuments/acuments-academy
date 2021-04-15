# Notes:
# Delegators as the name implies is a way to delegate certain actions to someone else.
# In programming terminology this would be to delegating certain method execution to a class different than the class in current context.

class Item

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  attr_accessor :price, :quantity

  def total_invoice_value
    quantity * price
  end
end

class Wrapper
  def initialize(item)
    @item = item
  end

  def print_invoice
    puts "INVOICE"
    puts "----------------------------"
    puts "Potatoes ---- #{@item.quantity}  X #{@item.price} = #{@item.total_invoice_value}"
    puts "----------------------------"
  end
end

item = Item.new(10, 5)
wrapper = Wrapper.new(item)
wrapper.print_invoice
