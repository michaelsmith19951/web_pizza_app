require "sinatra"

def meat_toppings()   
 meats = ["pepperoni", "sausage", "ham", "bacon", "chicken", "beef-wellington"]
end
def meats_price()
    [0.25, 0.50, 0.35, 0.80, 1.00, 0.99  ]
end
def cheese_toppings()
    cheese = ["pepperjack", "colbyjack", "parmesan", "mozzerella", "blue cheese", "nacho"]
end
def cheese_price()
    cheese = [1.00, 0.75, 1.00, 2.94, 1.23, 2.54]
end
def vegetable_toppings()
    vegetables = ["onion", "bell pepper", "jalapenos", "habenero", "banana peppers", "olives",]
end
def crusts()
    crusts = ["stuffed crust", "thin crust", "thick crust"]
end
def vegetables_price()
    vegetables = [0.50, 1.00, 2.00, 3.00, 2.00, 1.00]
end
def sauces()
    sauce = ["tomato sauce", "white sauce", "ranch", "mayo"]
end
def sauce_price()
    sauce = [1.00, 0.50, 2.00, 0.15]
end
def sizes()
    sizes = ["5 inch", "10 inch", "15 inch"]
end 
def size_price
    sizes = [10.00, 32.00, 65.25]
end
def cls
    system ('cls')
end
def pizzaria(sizes, meat_toppings, vegetable_toppings, cheese_toppings, sauces, crusts)
    cls
    # puts "to choose what you want,enter the assigned number"
    # puts "what meat toppings do you want on your pizza?"; print "#{meat_toppings()} : " 
    p_meats = $stdin.to_i; cls
    # # puts "what kind of cheese do you want on your pizza?"; print "#{cheese_toppings()} : " 
    p_cheese = $stdin.to_i; cls
    # # puts "what kind of veggies do you want on your pizza?"; print "#{vegetable_toppings()} : "
     p_vegetables = $stdin.to_i; cls
    # # puts "what kind of sauce do you want on your pizza?"; print "#{sauces()} : " 
    p_sauce = $stdin.to_i; cls
    # # puts "what size would you like your pizza to be?"; print "#{sizes()} : " 
    p_sizes = $stdin.to_i; cls
    final_hash = {}
    total_arr = []
    #p "subtotal_arr in total_arr is #{subtotal_arr}"
    p "in final_total total_arr is #{total_arr} class is #{total_arr.class}"
    total = total_arr.flatten.sum
    final_hash["sizes"] = sizes
    final_hash["crusts"] = crusts
    final_hash["meat_toppings"] = meat_toppings
    final_hash["vegetable_toppings"] = vegetable_toppings
    final_hash["cheese_toppings"] = cheese_toppings
    final_hash["sauces"] = sauces
    final_hash["crusts"] = crusts
    final_hash["total"] = total
    final_hash
    price = 0
    # puts "do you wnat it delivered y/n?"
    #     answer = gets.chomp
    # if answer == "y" ; puts " how many miles away is the foods destination?"; miles = gets.chomp.to_i; cls
    #      if miles >= 50 
    #          (price + 5) + (0.40 * miles) 
    #      else; price + 5
    #      end
    #  end
     total = price * 1.16 
     # puts "that will be $#{total.round(2)}, after tax."
    price += meats_price[p_meats - 1] + cheese_price[p_cheese - 1] + vegetables_price[p_vegetables - 1] + sauce_price[p_sauce - 1] + size_price[p_sizes - 1]
    # puts "enjoy your #{size[p_size - 1]}, #{meats[p_meats - 1]}, #{cheese[p_cheese - 1]}, #{veggies[p_veggies - 1]}, #{sauce[p_sauce - 1]} pizza"; puts "enjoy your side of #{sides}"
end
# pizzaria()