require_relative 'product'
class File_operation
  def self.get_id(input_file="product.txt")
    File.open(input_file, "a+") {|file|
      if file.count>0
        lines = File.open(input_file).to_a
        result = lines.last.split(" ").map(&:strip)
        return (result[0].to_i+1).to_s
      else
        return '1'
      end
    }
  end

def self.edit_stock(var , result)
   product_obj=Product.new
    hash_1=Hash.new
    hash_1[:id] = var
    puts "Enetr the details of product"
    puts "Enter name: "
    hash_1[:name] = result[1]
    hash_1[:price] = result[2]
    hash_1[:stock] = result[3]
    hash_1[:company] = result[4]
    product_obj.edit(var,hash_1)
end

end