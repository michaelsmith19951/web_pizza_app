require "sinatra"

def crust_subtotal(pizza_crust)
    crust_subtotal_arr = []
    crusts = "#{pizza_crust}"
    if crusts == "stuffed crust" 
        crust_subtotal_arr << 0.50
    else 
        crust_subtotal_arr << 1.00
    end
    crust_subtotal_arr
end
def toppings2(pizza_toppings)
    empty = []
    p "check if toppings2 is #{pizza_toppings}"
    toppings_price = {"pepperoni" => 0.50, "sausage" => 0.50, "ham" => 0.75, "bacon" => 0.75, "pepperjack" => 0.25, "colbyjack" => 0.25, "parmesan" => 0.25, "mozzerella" => 0.25, "extracheese" => 0.50, "bell peppers" => 0.25, "jalapenos" => 0.30, "banana peppers" => 0.25}
    toppings_subtotal = 0
    pizza_toppings.each  do |topping|
        toppings_subtotal = toppings_price.values_at(topping)
        empty << toppings_subtotal
        p "toppings at toppings price are #{empty}"
    end
    empty
end
def size_price(pizza_size)
    size_array = []
    if pizza_size == "small"
        size_array << 5.00
    elsif pizza_size == "medium"
        size_array << 7.00
    else 
        size_array << 9.00
    end
    puts size_array
    size_array
end


def toppings()
    vegetables = ["pepperoni", "sausage", "ham", "bacon", "pepperjack", "colbyjack", "parmesan", "mozzerella", "bell peppers", "jalapenos", "banana peppers"]
end
def crusts()
    crusts = ["stuffed crust", "thin crust", "thick crust"]
end
def sauces()
    sauce = ["tomato sauce", "white sauce", "ranch", "mayo"]
end
def sauce_price(pizza_sauces)
    empty = []
    sauce_price = {"tomato sauce" => 0.25, "white sauce" => 0.50, "ranch" => 0.25, "mayo" => 0.75}
    sauce_subtotal = 0
    eval(pizza_sauces).each  do |pizzasauce|
        sauce_subtotal = sauce_price.values_at(pizzasauce)
        empty << sauce_subtotal
    end
    empty
end
def sizes()
    sizes = ["small", "medium", "large"]
end 
def cls
    system ('cls')
end
def delivery(address)
    delivery_arr = []
    charge = 0
    if address == "radioYes"
        charge += 5.00
    else 
        charge = 0.00
    end
    delivery_arr << charge
end
def subtotal_array(pizza_toppings, pizza_crust)
    new_array = []
    new_array = toppings2(pizza_toppings) << crust_subtotal(pizza_crust)
    new_array.flatten
end
def pizzaria(pizza_size, pizza_crust, pizza_toppings, pizza_sauces)
    p "test if pizza size is #{pizza_size}"
    p "test if pizza crust is #{pizza_crust}"
    p "test if pizza toppings is #{pizza_toppings.class}"
    p "test if pizza sauces is #{pizza_sauces}"
    final_hash = {}
    total_arr = []
    taxes = 0.06
    total_arr = subtotal_array(pizza_toppings, pizza_crust)
    tax_charge = total_arr * taxes 
    total_arr << tax_charge
    my_size = size_price(pizza_size)
    total_arr << my_size
    total = total_arr.flatten.sum.to_f
    final_hash["pizza_size"] = pizza_size
    final_hash["pizza_crust"] = pizza_crust
    final_hash["pizza_toppings"] = pizza_toppings
    final_hash["pizza_sauces"] = pizza_sauces
    final_hash["total"] = total
    final_hash
end
# pizzaria()