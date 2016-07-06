require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

require_relative('../models/account')
require_relative('../models/tag')
require_relative('../models/merchant')


get '/account' do
  query = params[:search]
  query_type = params[:search_type]
  @transactions = Transaction.all(query, query_type)
  @tags = Tag.all()
  @merchants = Merchant.all
  @account = Account.new(@transactions)
  erb(:account)
end

