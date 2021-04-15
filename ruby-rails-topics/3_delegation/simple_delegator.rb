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

class Wrapper < SimpleDelegator
  def print_invoice
    puts "INVOICE"
    puts "TOTAL BILL: #{total_invoice_value}"
  end
end

item = Item.new(5, 100)
wrapper = Wrapper.new(item)
wrapper.print_invoice