class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_item, :subtotal

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    if quantity > 1
      counter = 0
       while counter < quantity
       @items << item
       counter += 1
       end
       else
         @items << item
    end
    self.last_item = item
    self.price = price
    self.subtotal = quantity * price
    self.total = self.total + quantity * price
  end

  def apply_discount
    if @discount > 0
      savings = (price * discount)/100
      @total -= savings
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items = self.items.pop
    self.total = self.total - self.subtotal
  end

end



# class CashRegister
#   attr_accessor :total, :discount, :price, :items
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end
#
#   def apply_discount
#     if @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#     end
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     @total -= @price
#   end
#
# end
#
# # class CashRegister
# #
# # attr_accessor :total, :discount, :item, :price
# #
# # def initialize(discount = 0)
# #   @total = 0
# #   @discount = discount
# #   @items = []
# # end
# #
# #
# # def add_item(title, price)
# #   # if title
# #   #   total + 0.98
# #   # end
# # end
# #
# # end
