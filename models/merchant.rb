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

  def self.find( id )
    merchants = run( "SELECT * FROM merchants WHERE id=#{id}" ) 
    result = Merchant.new( merchants.first )
    return result
  end

  def self.update( options )
      run(  
        "UPDATE merchants SET 
          name='#{options['name']}'
          WHERE id=#{options['id']}"
      ) 
  end

  def self.destroy( id )
    run( "DELETE FROM merchants WHERE id=#{id}" )
  end
end
