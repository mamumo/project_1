require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'date')
require_relative('../models/transaction')
require_relative('../models/tag')
require_relative('../models/merchant')
require('pry-byebug')


get '/transactions' do
  @transactions = Transaction.all
  erb( :'transactions/index')
end

get '/transactions/new' do
  @tags = Tag.all()
  @merchants = Merchant.all()
  erb( :'transactions/new')
end

get '/transactions/:id' do
  @transaction = Transaction.find(params[:id])
  erb( :'transactions/show')
end

post '/transactions' do
  @transaction = Transaction.new(params)
  @transaction.save
  redirect to '/transactions'
end

# post '/transactions/:id/delete' do
#   Transaction.destroy( params[:id] )
#   redirect to('/transactions')
# end

# get '/transactions:id/edit' do
#   @transaction = Transaction.find( params[:id] )
#   erb( :'transactions/edit' )
# end
  #NEW
 
# end

# post '/transactions' do
#   #CREATE

# end

# get '/transaction/:id' do
#   #SHOW
  
# end

# get '/transactions/:id/edit' do
#   #EDIT

# end

# put '/transactions/:id' do
#   #UPDATE
 
# end

# delete '/transactions/:id' do
#   #DELETE
# end