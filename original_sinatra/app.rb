require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

enable :sessions

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: './users.db'
)

class User < ActiveRecord::Base
    validates :name, presence: true
    validates :password, presence: true
end

get '/' do
    @users = User.all
    erb :index
end

post '/signup' do
    @user = User.find_by(name: params[:user], password: params[:password])
     if @user
        redirect to '/top'
     else
        erb :index
     end
end

get '/top' do
    erb :top
end




#class Test < ActiveRecord::Base
#    establish_connection(
#        adapter:  "postgresql",
#        host:     "",
#        username: ENV['username'],
#        password: "",
#        database: "test"
#    )
#end