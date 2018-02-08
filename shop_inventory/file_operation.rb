require_relative 'product'
class File_operation
  $SEPARATOR ="||"
  attr_accessor :input_file, :secondary_file
  @input_file=""
  @secondary_file=""

  def initialize(input_file="product.txt",secondary_file="product1.txt")
     @input_file=input_file
     @secondary_file=secondary_file
  end

  def self.get_id(input_file = "product.txt")
    File.open(input_file, "a+") {|file|
      if file.count>0
        lines = File.open(input_file).to_a
        result = lines.last.split($SEPARATOR).map(&:strip)
        return (result[1].to_i+1)
      else
        return 1
      end
    }
  end

  def self.edit_stock(var , result)
    product_obj=Product.new
    hash_1=Hash.new
    hash_1[:id] = var
    puts "Enetr the details of product"
    puts "Enter name: "
    hash_1[:name] = result[2]
    hash_1[:price] = result[3]
    hash_1[:stock] = result[4]
    hash_1[:company] = result[5]
    product_obj.edit(var,hash_1)
  end

  def add(hash_1)
    var="Product"
    File.open(@input_file, 'a+') do |f|
      hash_1.each_value { |value| var=(var.to_s)+$SEPARATOR+(value.to_s).chomp}
      f.puts var
      f.close
    end
  end

  def search(num)
    line1=""
    File.open(@input_file,"r") do |f|
      f.each_line do |line|
        result = (line.split($SEPARATOR).map(&:strip).to_a)
        pro_id=result[1].to_s
        pro_name=result[2].to_s
        if pro_id == num || pro_name == num
           return result
          break
        end
      end
      if line1.nil? || line1.empty?
        puts "This product is not available"
        return 1
      else
        return  result
      end
    end
  end

  def remove
    read_file = File.open(@input_file, "r")
    write_file = File.new(@secondary_file, "w")
      read_file.each_line do |line|
        result = line.split($SEPARATOR).map(&:strip).to_a
        pro_id=result[1]
        write_file.write(line) unless pro_id == (num).to_s
      end
    read_file.close
    write_file.close
    File_operation.move_line(@secondary_file , @input_file)
  end

  def edit(num,hash_1)
    var="Product"
    read_file = File.open(@input_file, "r")
    write_file = File.new(@secondary_file, "w")
      read_file.each_line do |line|
        result = line.split($SEPARATOR).map(&:strip).to_a
        pro_id=result[1]
        unless pro_id == (num).to_s
          write_file.write(line)
        else
          hash_1.each_value { |value| var=(var.to_s)+$SEPARATOR+(value.to_s).chomp}
          write_file.puts var
        end
      end
    read_file.close
    write_file.close
    Product.move_line(@secondary_file , @input_file)
  end

  def self.move_line(r_file, w_file)
    read_file=File.open(r_file,'r')
    write_file = File.new(w_file, "w")
    read_file.each_line do |line|
      write_file.write(line)
    end
    read_file.close
    write_file.close
  end

end