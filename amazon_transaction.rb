# Code your cash register here!
class AmazonTransaction

  def initialize(discount = 0, items = [], total = 0)
    @total = total
    @items = items
    @discount = discount
  end

  def total
    @total
  end

  def total=(total)
    @total = total
  end

  def items
    @items
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    while quantity != 0
      @items.push(title)
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    discount = @total * (@discount.to_f / 100.0)
    @total -= discount
    return "After the discount, the total comes to $#{@total.to_i}."
  end

end
