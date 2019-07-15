class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    erb :index
  end

  get '/recipes/:id' do
    params[:id]
    erb :recipe
  end

  get '/recipes/:id/edit' do
    params[:id]
    erb :edit
  end

  patch '/recipes/:id' do
    erb :recipe
  end

  post '/recipes/:id/delete' do
    erb :delete
  end

  delete '/recipes/:id' do
    redirect '/index'
  end

end
