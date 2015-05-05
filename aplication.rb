require 'sinatra'
require 'sinatra/base'
require 'bootstrap-sass'
require 'compass'

configure do 
	set :scss, {:style => :compact, :debug_info => false}

	#Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get 'public/stylesheets/:name.css' do
	content_type 'text/css', :charset => 'utf-8'
	scss(:'stylesheets/#{params[:name]}')
end

get '/' do 
	erb :index	
end