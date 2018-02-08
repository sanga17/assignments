require_relative 'product'
require_relative 'file_operation'
class Shopkeeper
  def add_product
    hash_1=Hash.new
    hash_1[:id] = (File_operation.get_id).to_i
    puts "Enetr the details of product"
    puts "Enter name: "
    hash_1[:name] = gets.chomp
    puts"Enter price: "
    hash_1[:price] = gets.to_f
    puts"Enter Stock Item: "
    hash_1[:stock] = gets.to_i
    puts"Enter Company Name: "
    hash_1[:company] = (gets.to_s).chomp
    product_obj=Product.new
    product_obj.add(hash_1)
    puts "added successfull"
    Shopkeeper.case_method

  end

  def remove_product
    puts "Enetr the product id OR product name of product to be removed"
    remove_item=(gets.to_s).chomp
    product_obj=Product.new
    product_obj.remove(remove_item)
    puts "product succesfully deleted"
    Shopkeeper.case_method
  end

  def self.list_product
    Product.list
    puts "Enter 1:To search any product"
    var=gets.to_i
    shopkeeper_obj_1=Shopkeeper.new
    case var
      when 1
        shopkeeper_obj_1.search_product
      else
        Shopkeeper.case_method
    end
  end

  def search_product
    puts "Enetr the product id OR product name of product to be searched"
    search_item = gets.chomp
    puts "search_item: #{search_item}"
    product_obj=Product.new
    result=product_obj.search(search_item)
    puts result
    if result == 1
      Shopkeeper.case_method
    else
      puts "Enter 1:To edit this product "
      var=gets.to_i
      shopkeeper_obj_1=Shopkeeper.new
        case var
          when 1
            shopkeeper_obj_1.edit_product
          else
            Shopkeeper.case_method
        end
    end
  end

  def edit_product
    product_obj=Product.new
    puts "Enter product id to edit product"
    var=gets.to_i
    hash_1=Hash.new
    hash_1[:id] = var
    puts "Enetr the details of product"
    puts "Enter name: "
    hash_1[:name] = gets.chomp
    puts"Enter price: "
    hash_1[:price] = gets.to_f
    puts"Enter Stock Item: "
    hash_1[:stock] = gets.to_i
    puts"Enter Company Name: "
    hash_1[:company] = (gets.to_s).chomp
    product_obj.edit(var,hash_1)
    puts "succesfully edited"
    Shopkeeper.case_method
  end

  def self.case_method
    shopkeeper_obj_1=Shopkeeper.new
    puts "enter 1: add product\n  2: Remove the product\n 3:Product List\n 4:Search product\n 5:Edit Product\n 6:Go to Main page"
    num_1=gets
    num=num_1.to_i
    case num
      when 1
        shopkeeper_obj_1.add_product
      when 2
        shopkeeper_obj_1.remove_product
      when 3
        Shopkeeper.list_product
      when 4
        shopkeeper_obj_1.search_product
      when 5
        shopkeeper_obj_1.edit_product
      when 6
        ShopInventory.ask_user
      else
        p "please choose correct no"
      end
  end
end