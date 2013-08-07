get '/' do
  erb :index
end

post '/urls' do
  @url = Url.create(origin_url: params[:origin_url])
  if @url.valid?
    redirect "/urls/#{@url.id}/show"
  else
    erb :index
  end
end

# e.g., /q6bda
get '/urls/:short_url' do
  u = Url.find_by_short_url(params[:short_url])
  u.click_count += 1
  u.save
  redirect u.origin_url
end

get '/urls/:id/show' do
  @url = Url.find(params[:id])
  erb :shortened_url
end
