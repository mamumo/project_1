require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('../models/merchant')

get '/merchants' do
  @merchants = Merchant.all
  erb( :'merchants/index')
end

get '/merchants/:id' do
  @merchant = Merchant.find(params[:id])
  erb( :'merchants/show')
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
