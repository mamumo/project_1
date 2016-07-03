require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry-byebug')

require_relative( './models/account' )
require_relative( './models/merchant' )
require_relative( './models/tag' )
require_relative( './models/transaction' )
require_relative( './controllers/merchants.rb' )
require_relative( './controllers/tags.rb' )
require_relative( './controllers/transactions.rb' )


get( '/overview' ) do 
  @merchants = Merchant.all()
  @tags = Tag.all()
  @transactions = Transaction.all()
  erb( :main_index )
end