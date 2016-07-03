require( 'pg' )
require( 'pry-byebug' )


class Transaction

  attr_reader( :id, :merchant_id, :tag_id, :amount, :date, :description, :type)

  def initialize( options )
    @id = options['id'].to_i
    @merchant_id = options['merchant_id'].to_i
    @tag_id = options['tag_id'].to_i
    @amount = options['amount'].to_i
    @date = options['date']
    @description = options['description']
    @type = options['type']
  end
end
