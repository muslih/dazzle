require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
get '/' do
	@slogan = "<strong>Paduhost</strong><em>Layanan murah web hosting indonesia</em>"
	# @title = "Awal"
	erb :home
end

get '/kontak' do
	@title = "Kontak"
	erb :contact
end

get '/fitur' do
	@title = "Fitur Paduhost"
	erb :fitur
end

get '/hosting' do
	@title = "Paket Hosting"
	erb :hosting
end

not_found do
	@title = "404"
    erb :not_found
end

get '/fake-error' do

    status 500
    "There's no wrong, really :p"
end
