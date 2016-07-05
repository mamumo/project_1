require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

require_relative('../models/merchant')

get '/merchants' do
  @merchants = Merchant.all
  erb( :'merchants/index')
end

get '/merchants/new' do
  erb( :'merchants/new')
end

get '/merchants/:id' do
  @merchant = Merchant.find(params[:id])
  erb( :'merchants/show')
end

post '/merchants' do
  @merchant = Merchant.new(params)
  @merchant.save()
  erb( :'merchants/create' )
end



# get '/albums/new' do
#   #NEW
#   @artists = Artist.all()
#   erb( :'albums/new' )
# end


# post '/merchant' do
#   @merchant = Merchant.new( params[:merchant_name])
#   @merchant.save()
# erb( :create)
