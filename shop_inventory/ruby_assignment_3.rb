require_relative 'shopkeeper'
require_relative 'customer'
class ShopInventory
  def self.choose_user(name)
    case name
      when 1
        p "welcome customer"
        Customer.case_method
      when 2
        p "welcome shopkeeper"
        Shopkeeper.case_method
      else
        p "please choose correct no"
        exit
      end
  end

   def self.ask_user
     shop_invent_obj=ShopInventory.new
     puts "enter 1 for: customer 2:shopkeeper 3:exit"
     name=gets
     name_1 = name.to_i
     ShopInventory.choose_user(name_1)
    end
    # shop_invent_obj=ShopInventory.new
    ShopInventory.ask_user
end

