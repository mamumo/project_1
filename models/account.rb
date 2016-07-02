require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('transaction.rb')

class Account

  def initialize( transactions )
   @transactions = transactions
  end
end
