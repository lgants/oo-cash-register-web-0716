require 'pry'



class CashRegister
  def initialize(optional_discount_i=0)
    @total = 0
    @optional_discount = optional_discount_i
    #need to include inside initialize
    @items = []
  end

  def total
    @total
  end

  def total=(total_i)
    @total = total_i
  end

  def discount
    @optional_discount
  end

  def items
    @items
  end

  def add_item(title_i, price_i, optional_quantity_i=1)
    @price = price_i
    @quantity = optional_quantity_i
    self.total += (price_i * optional_quantity_i)
    optional_quantity_i.times do
      self.items << title_i
    end
  end

  def apply_discount
    if self.discount==0
      "There is no discount to apply."
    else
      self.total *= (1 - (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= @price
  end


end
