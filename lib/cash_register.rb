class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=nil)
    self.total = 0.0
    self.discount = discount
    self.items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      self.items << item
      self.total += price
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if self.discount
      self.total = self.total - (self.total * (discount.to_f / 100.0)).to_i
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
