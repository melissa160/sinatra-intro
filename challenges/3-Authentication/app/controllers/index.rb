get '/' do
 # Homeage
 # Por hacer : Mostrar todo los usuario si se esta logueado
  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page 
  erb :sign_in
end

post '/sessions' do
  # sign-in
  @user = User.find_by(email: params[:email])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id 
    erb :sessions
  else
    redirect '/sessions/new'
  end

end


delete '/sessions/:id' do
  # sign-out
  session[:user_id] = nil
  redirect '/'
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
  erb :sign_up
end

post '/users' do
  # sign-up a new user
  user = User.new(params[:user])
  if user.save
    redirect '/sessions/new'
  end
end
