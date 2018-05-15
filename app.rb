require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        params.each do |k, v|
            if k == "name"
                @team = v
            elsif k == "coach"
                @coach = v
            elsif k == "pg"
                @pg = v
            elsif k == "sg"
                @sg = v
            elsif k == "pf"
                @pf = v
            elsif k == "sf"
                @sf = v
            elsif k == "c"
                @c = v 
            end
        end

        erb :team 
    end
end
