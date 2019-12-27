require 'sinatra/base'

class User < Sinatra::Base
    get '/' do
        # 'Hello Sinatra.'
        # set :views, settings.root + '/views'
        erb :user
    end

    run! if app_file == $0
end

