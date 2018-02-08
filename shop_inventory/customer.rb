require_relative 'product'
require_relative 'orders'
class Customer
  def self.list_product
    Product.list
    puts "Enter 1:To search any product"
    var=gets.to_i
    customer_obj_1=Customer.new
    case var
      when 1
        customer_obj_1.search_product
      else
        Customer.case_method
    end
  end

  def search_product()
    puts "Enetr the product id OR product name of product to be searched"
    search_item=(gets.to_i)
    product_obj=Product.new
    result=product_obj.search(search_item)
    puts result
    puts "Enter 1:To buy this product "
    var=gets.to_i
    customer_obj_1=Customer.new
    case var
      when 1
        Customer.order_product(search_item)
      else
        Customer.case_method
    end
  end

  def self.order_product(id)
    product_obj=Product.new
    result=product_obj.search(id)
    Orders.make_payment(result)
    Customer.case_method
  end

  def self.case_method
    customer_obj_1=Customer.new
    puts "enter 1: Product List\n  2: Search product\n 3: Order product\n 4: Go to Main page"
    num_1=gets
    num=num_1.to_i
    case num
      when 1
        Customer.list_product
      when 2
        customer_obj_1.search_product
      when 3
        customer_obj_1.order_product
      else
        p "please choose correct no"
    end
  end
end
