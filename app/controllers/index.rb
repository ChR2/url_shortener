get '/' do
  erb :index
end

post '/urls' do
  @url = Url.create(origin_url: params[:origin_url])
  erb :shortened_url
end

# e.g., /q6bda
get '/:short_url' do
  u = Url.find_by_short_url(params[:short_url])
  redirect u.origin_url
end
