require "sinatra"
require_relative "pizza_app.rb"
enable :sessions
get '/' do
	erb :pizza_app_home_page
end

post '/pizza_app_home_page' do
	pizza_crust = params[:pizza_crust]
	pizza_sauces = params[:pizza_sauces]
	pizza_size = params[:pizza_size]
	toppings2 = params[:toppings].to_s
	# session[:pizza_crust] = params[:pizza_crust]
	# session[:pizza_sauces] = params[:pizza_sauces]	
	# session[:pizza_size] = params[:pizza_size]
	# session[:pizza_toppings] = params[:pizza_toppings].to_s
	# session[:address] = params[:address]
	p "test that crusts in home page are #{pizza_crust}"
	p "test that sauces in home page are #{pizza_sauces}"
	p "test that sizes in home page are #{pizza_size}"
	p "test that toppings in home page are #{toppings}"
	redirect '/pizza_creation_page'
end

get '/pizza_creation_page' do
	pizza_crust = params[:pizza_crust]
	pizza_sauces = params[:pizza_sauces]
	pizza_size = params[:pizza_size]
	toppings2 = params[:toppings].to_s
	# session[:pizza_crust] = params[:pizza_crust]
	# session[:pizza_sauces] = params[:pizza_sauces]	
	# session[:pizza_size] = params[:pizza_size]
	# session[:pizza_toppings] = params[:pizza_toppings].to_s
	# session[:address] = params[:address]
	p "test that crusts in get creation page are #{pizza_crust}"
	p "test that sauces in get creation page are #{pizza_sauces}"
	p "test that sizes in get creation page are #{pizza_size}"
	p "test that toppings in get creation page are #{toppings}"
	erb :pizza_creation_page, locals:{pizza_crust: pizza_crust, pizza_sauces: pizza_sauces, pizza_size: pizza_size, toppings: toppings}
end

post '/pizza_creation_page' do
	pizza_crust = params[:pizza_crust]
	pizza_sauces = params[:pizza_sauces]
	pizza_size = params[:pizza_size]
	toppings = params[:toppings].to_s
	# session[:pizza_crust] = params[:pizza_crust]
	# session[:pizza_sauces] = params[:pizza_sauces]	
	# session[:pizza_size] = params[:pizza_size]
	# session[:pizza_toppings] = params[:pizza_toppings].to_s
	# session[:address] = params[:address]
	p "test that crusts in post creation page are #{pizza_crust}"
	p "test that sauces in post creation page are #{pizza_sauces}"
	p "test that sizes in post creation page are #{pizza_size}"
	p "test that toppings in post creation page are #{toppings}"
	redirect '/pizza_app_confirmation_page?toppings2=' + toppings + '&pizza_crust=' + pizza_crust + '&pizza_sauces=' + pizza_sauces + '&pizza_size=' + pizza_size
end
get '/pizza_app_confirmation_page' do
	total = pizzaria(params[:pizza_size], params[:pizza_crust], eval(params[:toppings2]), params[:pizza_sauces])
	p_size = total["pizza_size"]
	p_crust = total["pizza_crust"]
	p_sauces = total["pizza_sauces"]
	p_toppings = total["pizza_toppings"]
	session[:p_total] = total["total"]
	erb :pizza_app_confirmation_page, locals:{total: total, p_crust: p_crust, p_sauces: p_sauces, p_size: p_size, p_toppings: p_toppings} 
end
post '/pizza_app_confirmation_page' do
	confirm_size = params[:confirm_size]
	confirm_crust = params[:confirm_crust]
	confirm_topping = params[:confirm_topping]
	confirm_address = params[:confirm_address]
	confirm_sauces = params[:confirm_sauces]
	p "test if #{confirm_address} is on confirmation page"
	confirm_arr = []
	confirm_arr << confirm_size << confirm_crust << confirm_topping << confirm_address << confirm_sauces
	confirm_arr.uniq!
	confirm_arr.each do |confirmation|
		if confirm_arr.length == 2
			redirect '/pizza_creation_page'
		else confirm_arr.length == 1
			if confirmation == "no"
				redirect '/pizza_creation_page'
			else
				redirect '/pizza_app_final_page?confirm_address=' + confirm_address
			end
		end
	end
end
get '/pizza_app_final_page' do
	p_total = session[:p_total]
	confirm_address = params[:confirm_address]
	pizza_size = params[:pizza_size]
	pizza_crust = params[:pizza_crust]
	toppings = params[:toppings]
	pizza_sauces = params[:pizza_sauces]
	p "test if #{confirm_address} is on final page"
	erb :pizza_app_final_page, locals:{p_total: p_total, pizza_size: pizza_size, pizza_sauces: pizza_sauces, pizza_crust: pizza_crust, toppings: toppings, confirm_address: confirm_address}
end
	post '/pizza_app_final_page' do
end