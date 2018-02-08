require_relative 'customer'
require_relative 'product'
class Orders
  def self.make_payment(result)
    if result[3].to_i > 0
      puts "Enter quantity to buy of #{result[1]}"
      qty = gets.to_i
      if qty > result[3].to_i
        puts "quantity is greater than available stock..."
        ShopInventory.case_method
      else
        total_price = qty * result[2].to_i
        hash_1=Hash.new
        hash_1[:id] = (File_operation.get_id("orders_list.txt"))
        hash_1[:name] = result[1].chomp
        hash_1[:quantity] = qty
        hash_1[:price] = result[2]
        hash_1[:total_price] = total_price
        puts "Total price is: #{total_price}\n"
        puts "Enter 1 to make order:"
        var=gets.to_i
        case var
          when 1
            product_obj=Product.new
            product_obj.add(hash_1,"orders_list.txt")
            result[3]=(result[3].to_i - qty).to_s
            puts "order is completed"
            File_operation.edit_stock(result[0].to_i , result)
            Customer.case_method
          else
            puts "Thank you...."
            Customer.case_method
        end
      end
    else
      puts "Sorry this product is out of stock "
    end
  end
end
