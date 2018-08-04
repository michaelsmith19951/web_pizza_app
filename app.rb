require "sinatra"
require_relative "pizza_app.rb"
enable :sessions
get '/' do
	erb :pizza_app_home_page
end

post '/pizza_app_home_page' do
	redirect '/pizza_creation_page'
end

get '/pizza_creation_page' do
	sizes = params[:sizes]
	meat_toppings = params[:meat_toppings]
	vegetable_toppings = params[:vegetable_toppings]
	cheese_toppings = params[:cheese_toppings]
	sauces = params[:sauces]
	crusts = params[:crusts]
	p "test that #{params} in pizza creation page are params"
	erb :pizza_creation_page
end

post '/pizza_creation_page' do
	redirect '/pizza_app_confirmation_page'
end
get '/pizza_app_confirmation_page' do
	p "params in confirmation page are #{params}"
	address = params[:address]
	p "test that #{meat_toppings} is on pizza confirmation page"
	p "test that #{vegetable_toppings} is on pizza confirmation page"
	p "test that #{cheese_toppings} is on pizza confirmation page"
    p "test that #{sauces} is on pizza confirmation page"
    p "test that #{sizes} is on pizza confirmation page"
    p "test that #{crusts} is on pizza confirmation page"
    p "test that #{address} is on pizza confirmation page"
	erb :pizza_app_confirmation_page, locals:{sizes: sizes, meat_toppings: meat_toppings, vegetable_toppings: vegetable_toppings, cheese_toppings: cheese_toppings, sauces: sauces, crusts: crusts}
end
post '/pizza_app_confirmation_page' do
	redirect '/pizza_app_final_page'
end
get '/pizza_app_final_page' do
	p "params in total on final page are #{params}"
	total = final_total(params[:sizes], params[:meat_toppings], params[:vegetable_toppings], params[:cheese_toppings], params[:sauces], params[:crusts])
	erb :pizza_app_final_page, locals:{total: total, address: address, sizes: sizes, meat_toppings: meat_toppings, vegetable_toppings: vegetable_toppings, cheese_toppings: cheese_toppings, sauces: sauces, crusts: crusts}
end
	post '/pizza_app_final_page' do
end