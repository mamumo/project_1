require( 'pg' )
require( 'pry-byebug' )


class Tag

  attr_reader(:id, :name)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    db = PG.connect( { dbname: 'money_cashboard', host: 'localhost' } )
    sql = "INSERT INTO tags ( 
      name) 
      VALUES (
      '#{ @name }'
      )"
    db.exec(sql)
    db.close
  end
end

binding.pry

tag1 = Tag.new( {"name" => "groceries"})
tag2 = Tag.new( {"name" => "social"})