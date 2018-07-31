require "sinatra"
require_relative "pizza_app.rb"
enable :sessions
get '/' do
	# meats = session[:meats] || meats()
	# meats_price = session[:meats_price] || ""
	sizes = session[:sizes] || sizes()
	size_price = session[:size_price] || ""
	# cheese = session[:cheese] || cheese()
	# cheese_price = session[:cheese_price] || ""
	# vegetables = session[:vegetables] || vegetables()
	# vegetables_price = session[:vegetables_price] || ""
	# sauce = session[:sauce] || sauce()
	# sauce_price = session[:sauce_price] || ""
	# puts "#{session[:meats]}"
	puts "the size of get / do is #{sizes}"
	erb :pizza_app_home_page, locals:{size_price: size_price, sizes: sizes}
end
post '/pizza_app_home_page' do
	puts "post home page params are #{params[sizes]}"
	# meats = params[:options]
	size_price = params[:size_price]
	sizes = params[:sizes]
	# session[:meats] = params["option1"]
	# session[:meats_price] = meats_price()
	# session[:cheese] = cheese()
	# session[:vegetables] = vegetables()
	# session[:sauce] = sauce()
	puts "#{params[sizes]} is params size in post home page"
	redirect '/pizza_app_toppings_page'
	erb :pizza_app_home_page
end
get '/pizza_app_toppings_page' do
	meats = session[:meats] || meats()
	meats_price = session[:meats_price] || ""
	cheese = session[:cheese] || cheese()
	cheese_price = session[:cheese_price] || ""
	vegetables = session[:vegetables] || vegetables()
	vegetables_price = session[:vegetables_price] || ""
	erb :pizza_app_toppings_page, locals:{size_price: size_price, sizes: sizes, meats_price: meats_price, meats: meats, cheese_price: cheese_price, cheese: cheese, vegetables_price: vegetables_price, vegetables: vegetables}
end
post '/pizza_app_toppings_page' do
	p meats_price
	p cheese_price
	p vegetables_price
	redirect '/pizza_app_sauces_page'
end
get '/pizza_app_sauces_page' do
	erb :pizza_app_sauces_page, locals:{size_price: size_price, sizes: sizes, meats_price: meats_price, meats: meats, cheese_price: cheese_price, cheese: cheese, vegetables_price: vegetables_price, vegetables: vegetables}
end
post '/pizza_app_sauces_page' do
	# redirect '/pizza_app_sauces_page'
end