require 'sinatra'
require 'sinatra/base'
require 'sinatra/required_params'
require 'sinatra/namespace'

class API < Sinatra::Base
    register Sinatra::Namespace

    namespace '/v1' do
        get '/get' do
            'hello sinatra.'
        end
    end
end

