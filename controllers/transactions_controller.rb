require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/transaction')

get '/transactions' do
  @transactions = Transaction.all
  erb( :'transactions/index')
end

get '/transactions/:id' do
  @transaction = Transaction.find(params[:id])
  erb( :'transactions/show')
end
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