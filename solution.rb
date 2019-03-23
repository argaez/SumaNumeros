require 'sinatra'

get '/' do
@cuenta = params[:item]
@cuenta = 0 if @cuenta == nil
erb :index
end

post '/count' do
@cuenta = params[:count].to_i + 1
redirect "/?item=#{@cuenta}"

end
