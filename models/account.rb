require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('transaction.rb')

class Account

  def initialize( transactions )
   @transactions = transactions
  
  end

  def total_transactions
    @transactions.reduce(0) { |sum, transaction| sum + transaction.amount }
  end
end


# def total_pizza_of_type(topping)
#   total = 0
#   @pizzas.each { |pizza| total += pizza.quantity if (pizza.topping == topping)}

#   return total
# end

