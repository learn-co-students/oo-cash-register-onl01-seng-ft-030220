require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items= []
  end
  
  def add_item(title, price, quantity = 1)
   @total += price*quantity
   #binding.pry
   quantity.times {@items << title}
   self.last_transaction = price * quantity 
  end 
    
  def apply_discount
    if discount > 0 
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def void_last_transaction 
  #  binding.pry 
    @total -= self.last_transaction
    
  end
  
  
  
end
