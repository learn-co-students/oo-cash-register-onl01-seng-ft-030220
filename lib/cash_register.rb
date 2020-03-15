require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_trasaction_amount
  
def initialize(discount=0)
  total = 0
  @total = total
  @discount = discount
  @items = []
end

#def total
#  @total
#end

def add_item(items, price, quantity=1)
  @total += price * quantity
  quantity.times {@items << items}
  @last_trasaction_amount = price*quantity
  @total
end
  
def apply_discount
  if discount != 0 
    self.total =(total * ((100.0 - discount.to_f)/100)).to_i  
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
end
 
  def items
    @items
  end
def void_last_transaction
  @total -= @last_trasaction_amount
end

end 