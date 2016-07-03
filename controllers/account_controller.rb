require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

get '/account/new' do 
  # return 'Hello World'
  erb( :new )
end