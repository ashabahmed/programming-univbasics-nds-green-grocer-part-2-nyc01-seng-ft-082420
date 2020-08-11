require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    discount_item = find_item_by_name_in_collection(coupon[:item], cart) 
    if discount_item
      
      how_many_can_be_discounted = (discount_item[:count]/coupon[:num]) * coupon[:num]
        
      discount_item[:count] = discount_item[:count] - how_many_can_be_discounted
        
        cart << {:item => "#{coupon[:item]} W/COUPON",
          :price => coupon[:cost]/coupon[:num],
          :clearance => discount_item[:clearance],
          :count => how_many_can_be_discounted
        }

      end
  
  end
  cart
end

def apply_clearance(cart)
  cart_discounted = []
  
  cart.each do |hash|
  if hash[:clearance] == true 
     hash[:price] = hash[:price] * 0.8
   end
    cart_discounted << hash
  end
  cart_discounted
end
cart = []
def checkout(cart, coupons)
  
  consolidate_cart(cart)
  
    index = 0
  new_cart = []
  
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
  
  apply_coupons(cart, coupons)
  total = 0 
  cart.each {|item| total += item[:price]*item[:count]}
  total


  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
 
   
end
