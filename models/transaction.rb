require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

class Transaction

  attr_reader( :id, :merchant_id, :tag_id, :amount, :date, :time, :description, :type)

  def initialize( options )
    @id = options['id'].to_i
    @merchant_id = options['merchant_id'].to_i
    @tag_id = options['tag_id'].to_i
    @amount = options['amount'].to_i
    @date = options['date']#????
    @time = options['time']#????
    @description = options['description']
    @type = options['type']
  end
end
