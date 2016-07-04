require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/tag')

get '/tags' do
  @tags = Tag.all
  erb( :'tags/index')
end

get '/tags/:id' do
  @tags = Tag.find(params[:id])
  erb( :'tags/show')
end