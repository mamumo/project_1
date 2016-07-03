require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

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
end
