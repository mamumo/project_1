require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/tag')

get '/tags' do
  @tags = Tag.all
  erb( :'tags/index')
end

get '/tags/new' do
  erb( :'tags/new')
end

get '/tags/:id' do
  @tags = Tag.find(params[:id])
  erb( :'tags/show')
end

post '/tags' do
  @tag = Tag.new(params)
  @tag.save()
  @tags = Tag.all
  erb( :'transactions/new' )
end
