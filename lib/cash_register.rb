class CashRegister
  attr_accessor :total
  attr_reader :items, :discount
  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  def add_item(title, price, quantity=1)
    @price = price
    for i in 1..quantity
      @total += price
      @items << title
    end
  end
  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total = @total * (100 - @discount) / 100
    "After the discount, the total comes to $#{@total}."
  end
  def void_last_transaction
    @total -= @price
    @items.delete_at(-1)
  end
end
