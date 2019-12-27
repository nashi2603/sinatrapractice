require 'sinatra/base'

class Index < Sinatra::Base
    get '/' do
        # 'Hello Sinatra.'
        # set :views, settings.root + '/views'
        erb :index
    end

    run! if app_file == $0
end

