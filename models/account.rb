require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('transaction.rb')

class Account

  def initialize( transactions )
   @transactions = transactions
  
  end

  # def total_transactions
  #   total = 0 #need to declare it if we are incrementing through loops

  #   @transactions.each { |transaction| total += transaction.amount} ????

  #   return total
  # end

  # def total_transactions_by_tag

  # end

  def total_transactions
    @transactions.reduce(0) { |sum, transaction| sum + transaction.amount }
  end
end

