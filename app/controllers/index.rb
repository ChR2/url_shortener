get '/' do
  erb :index
end

post '/urls' do
  @url = Url.create(params[:origin_url])
  
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end
