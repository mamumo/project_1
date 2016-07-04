require( 'pg' )
require( 'pry-byebug')
require_relative('../db/sql_runner')


class Tag

  attr_reader(:id, :name)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO tags (name) VALUES ('#{@name}') RETURNING *"
    tag = run(sql).first
    result = Tag.new( tag )
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM tags"
    run(sql)
  end

  def self.all()
    sql = "SELECT * FROM tags"
    return Tag.map_items(sql)
  end

  def self.map_items(sql)
    tags = run(sql)
    result = tags.map { |product| Tag.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Tag.map_items(sql)
    return result.first
  end

  def transactions()
    sql = "SELECT * FROM transactions WHERE tag_id = #{@id}"
    transactions_data = run( sql )
    transactions = transactions_data.map { |transaction_data| Transaction.new(transaction_data) }
    return transactions
  end

  def self.find( id )
    tags = run( "SELECT * FROM tags WHERE id=#{id}" ) 
    result = Tag.new( tags.first )
    return result
  end

  def self.update( options )
      run(  
        "UPDATE tags SET 
          name='#{options['name']}'
          WHERE id=#{options['id']}"
      ) 
  end

  def self.destroy( id )
    run( "DELETE FROM tags WHERE id=#{id}" )
  end
 
end

