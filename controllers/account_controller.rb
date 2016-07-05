require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

require_relative('../models/account')
require_relative('../models/tag')
require_relative('../models/merchant')

get '/account' do
  @transactions =Transaction.all()
  @merchants = Merchant.all()
  @tags = Tag.all()
  @account = Account.new(@transactions)
  erb(:account)
end

