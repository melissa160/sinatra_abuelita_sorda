require 'sinatra'

get '/' do
  
  erb :index
end

post '/respuesta' do
  if params[:dijo] == params[:dijo].upcase
    @respuesta = "Ahhh si, manzanas!"
  else
    @respuesta = "Habla más duro mijito" 
  end
  erb :respuesta
end