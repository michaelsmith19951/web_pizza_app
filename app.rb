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
	meats =  meats()
    cheese = cheese()
    vegetables =  vegetables()
    sauce = sauce()
    sizes =  sizes()
    crusts = crusts()
    price = session[:price] || ""
    pizza = session[:pizza] || ""
    puts "test that #{meats} is on pizza creation page"
    puts "test that #{cheese} is on pizza creation page"
    puts "test that #{vegetables} is on pizza creation page"
    puts "test that #{sauce} is on pizza creation page"
    puts "test that #{sizes} is on pizza creation page"
    puts "test that #{crusts} is on pizza creation page"
    puts "test that #{session[:price]} is on pizza creation page"
     puts "test that #{session[:pizza]} is on pizza creation page"
	erb :pizza_creation_page
end

post '/pizzaria' do
	meats = params[:thingy]
    meats_price = params[:thingy]
    doop_meats = params[:thingy1] || []
    temp_pizza = "here's your, "
    price = "that'll be, "
    temp_price = 0
  doop_meats.each do |v|
    temp_pizza += "#{v}, "
    meaty = meats().index(v)
    actual_price = meats_price()[meaty]
    temp_price += actual_price
  end
  doop_cheese = params[:thingy2] || []
  doop_cheese.each do |v|
    temp_pizza += "#{v}, "
    cheesy = cheese().index(v)
    actual_price = cheese_price()[cheesy]
    temp_price += actual_price
  end
  doop_veggies = params[:thingy3] || []
  doop_veggies.each do |v|
    temp_pizza += "#{v}, "
    veggy = vegetables().index(v)
    actual_price = veggies_price()[veggy]
    temp_price += actual_price
  end
   doop_sauce = params[:thingy4] || []
  doop_sauce.each do |v|
    temp_pizza += "#{v} sauce, "
    saucy= sauce().index(v)
    actual_price = sauce_price()[saucy]
    temp_price += actual_price
  end
    doop_size = params[:thingy5] || []
  doop_size.each do |v|
    temp_pizza += "#{v} pizza."
    sizey = sizes().index(v)
    actual_price = size_price()[sizey]
    temp_price += actual_price
  end
  doop_crusts = params[:thingy6] || []
  doop_crusts.each do |v|
  	temp_pizza += "#{v} pizza."
  	crusty = crusts().index(v)
  	actual_price = size_price()[crusty]
    temp_price += actual_price
  end
  price += temp_price.to_s
  session[:price] = price
  session[:pizza] = temp_pizza
	puts "test that #{meats} is on pizzaria page"
    puts "test that #{cheese} is on pizzaria page"
    puts "test that #{vegetables} is on pizzaria page"
    puts "test that #{sauce} is onpizzaria page"
    puts "test that #{sizes} is on pizzaria page"
    puts "test that #{crusts} is on pizzaria page"
	redirect '/pizza_app_confirmation_page'
end
get '/pizza_app_confirmation_page' do
	erb :pizza_app_confirmation_page, locals:{meats: meats, meats_price: meats_price, doop_meats: params[:thingy1], actual_price: [:actual_price], doop_cheese: params[:thingy2], doop_veggies: params[:thingy3], doop_sauce: params[:thingy4], doop_size: params[:thingy5], doop_crusts: params[:thingy6]}
end
post '/pizza_app_confirmation_page' do
	address = params[:address]
	puts "test that #{meats} is on pizza confirmation page"
    puts "test that #{cheese} is on pizza confirmation page"
    puts "test that #{vegetables} is on pizza confirmation page"
    puts "test that #{sauce} is on pizza confirmation page"
    puts "test that #{sizes} is on pizza confirmation page"
    puts "test that #{crusts} is on pizza confirmation page"
    puts "test that #{address} is on pizza confirmation page"
	redirect '/pizza_app_final_page'
end
get '/pizza_app_final_page' do
	erb :pizza_app_final_page, locals:{meats: meats, meats_price: meats_price, doop_meats: params[:thingy1], actual_price: [:actual_price], doop_cheese: params[:thingy2], doop_veggies: params[:thingy3], doop_sauce: params[:thingy4], doop_size: params[:thingy5], doop_crusts: params[:thingy6], address: params[:address]}
end
post '/pizza_app_final_page' do

end