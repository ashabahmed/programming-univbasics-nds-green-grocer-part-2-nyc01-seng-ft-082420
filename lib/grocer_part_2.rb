require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    discount_item[] = find_item_by_name_in_collection(coupon[:item], cart) 
    if discount_item[:clearance ]
      
      how_many_can_be_discounted = (discount_item[:count]/coupon[:num]) * coupon[:num]
        
      discount_item[:count] = discount_item[:count] - how_many_can_be_discounted
        
        cart << {:item => "#{coupon[:item]} W/COUPON",
          :price => coupon[:cost]/coupon[:num],
          :clearance => true,
          :count => how_many_can_be_discounted
        }

      end
  
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
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
