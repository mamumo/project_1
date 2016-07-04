require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')


class Transaction

  attr_reader( :id, :merchant_id, :tag_id, :amount, :date, :description, :type)

  def initialize( options )
    @id = options['id'].to_i
    @merchant_id = options['merchant_id'].to_i
    @tag_id = options['tag_id'].to_i
    @amount = options['amount'].to_i
    @transaction_date = options['transaction_date']
    @description = options['description']
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO transactions (merchant_id, tag_id, amount, transaction_date, description, type) VALUES ('#{@merchant_id}', '#{@tag_id}', '#{@amount}', '#{@transaction_date}', '#{@description}','#{@type}') RETURNING *"
    transaction = run(sql).first
    result = Transaction.new( transaction )
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM transactions"
    run(sql)
  end
  
  def self.all()
    sql = "SELECT * FROM transactions"
    return Transaction.map_items(sql)
  end

  def self.map_items(sql)
    transaction = SqlRunner.run_sql(sql)
    result = transaction.map { |product| Transaction.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Transaction.map_items(sql)
    return result.first
  end
end
