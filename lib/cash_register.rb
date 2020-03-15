class CashRegister
  
  attr_accessor :total

  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    #puts @discount
    @items = []
    @totalarray = []
  end
  
  def discount
    @discount
  end
  
  def add_item(item, price, quantity = 1)
    quantity.times do @items << item end
    @totalarray << total
    @total = @total + price * quantity
  end
  
  def apply_discount
    @total = @total * (1 - 0.01 * @discount)
    if @discount != 0 then 
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply." 
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.pop
    @total = @totalarray.last 
    @totalarray.pop
    @total
  end
  
end

cashregister = CashRegister.new 
cashregister_with_discount = CashRegister.new(20)
cashregister_with_discount.add_item("boob",1.28,3)
puts cashregister_with_discount.total
cashregister_with_discount.apply_discount
puts cashregister_with_discount.total



