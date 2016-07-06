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
  @merchants = Merchant.all
  redirect to('transactions/new' )
end

get '/merchants/:id/edit' do
  @merchant = Merchant.find( params[:id] )
  erb( :'merchants/edit' )
end

post '/merchants/:id' do
  @merchant = Merchant.update( params )
  redirect to ('/merchants')
end

post '/merchants/:id/delete' do
  Merchant.destroy( params[:id] )
  redirect to('/merchants')
end




