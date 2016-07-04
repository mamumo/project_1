require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('transaction')

class Merchant

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO merchants (name) VALUES ('#{@name}') RETURNING *"
    merchant = run(sql).first
    result = Merchant.new( merchant )
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM merchants"
    run(sql)
  end

  def self.all()
    sql = "SELECT * FROM merchants"
    return Merchant.map_items(sql)
  end

  def self.map_items(sql)
    merchants = run(sql)
    result = merchants.map { |product| Merchant.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Merchant.map_items(sql)
    return result.first
  end

  def transactions()
    sql = "SELECT * FROM transactions WHERE merchant_id = #{@id}"
    transactions_data = run( sql )
    transactions = transactions_data.map { |transaction_data| Transaction.new(transaction_data) }
    return transactions
  end
end
