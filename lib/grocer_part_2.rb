require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    discount_item = find_item_by_name_in_collection(coupon[:item], cart) 
    
    if discount_item
      if discount_item[:count] >= coupon[:num]
        binding.pry
        cart << {:item => "#{coupon[:item]} W/COUPON",
          :price => coupon[:cost]/coupon[:num],
          :clearance => true,
          :count => coupon[:num]
        }

      end
    end
    
    
  end
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
