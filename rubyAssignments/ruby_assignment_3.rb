class Product
  def initialize()
   puts "product mdhe alay re"
  end
  def add(name,price)
    f=File.open('Product_data.txt', 'a+') do |f|
    f.puts "#{name} "
    STDOUT.flush
    f.puts "#{price}"
    f.close
    end
  end
end
class Shopkeeper
  def initialize()
    puts "ithe yetoy"
  end
  def add_product
    product_obj=Product.new
   puts "Enetr the details of product"
   puts "Enter name: "
   name = gets.to_s
   STDOUT.flush
   name = name.chomp
   puts"Enter price: "
   price=gets
   STDOUT.flush
   price = price.chomp
   price=price.to_i
   puts "#{name} #{price}"
   product_obj.add(name , price)
  end
  def remove_product
  end
  def list_product
  end
  def search_product
  end
  def edit_product
  end
  def case_method
    shopkeeper_obj_1=Shopkeeper.new
    puts "enter 1: add product  2: Remove the product"
    num_1=gets
    num=num_1.to_i
    case num
      when 1
        shopkeeper_obj_1.add_product
      when 2
        p "welcome shopkeeper"
      else
        p "please choose correct no"
      end
  end
end

class ShopInventory
  def choose_user(name)
    case name
      when 1
        p "welcome customer"

      when 2
        p "welcome shopkeeper"
        shopkeeper_obj = Shopkeeper.new
        shopkeeper_obj.case_method
      else
        p "please choose correct no"
      end
  end
    puts "enter 1 for: customer OR enter 2:shopkeeper"
    name=gets
    name_1 = name.to_i
    shop_invent_obj=ShopInventory.new
    shop_invent_obj.choose_user(name_1)
end

