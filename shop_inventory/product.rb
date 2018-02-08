
class Product
  def add(hash_1,input_file="product.txt")
    var=""
    puts "input file is: #{input_file}"
    File.open(input_file, 'a+') do |f|
      hash_1.each_value { |value| var=(var.to_s)+" "+(value.to_s).chomp}
      f.puts var
      f.close
    end
  end

  def self.list
    File.open("product.txt", "r") do |f|
      f.each_line do |line|
        puts line
      end
    end
  end

  def search(num=1)
    line1=""
    File.open("product.txt", "r") do |f|
      f.each_line do |line|
        result = (line.split(" ").map(&:strip).to_a)
        pro_id=result[0].to_i
        if pro_id == num
           return result
          break
        end
      end
      if line1.nil? || line1.empty?
        return "This product is not available"
      else
        return  line1
      end
    end
  end

  def remove(num=2)
    r_file="product.txt"
    w_file="product1.txt"
    read_file = File.open('product.txt', "r")
    write_file = File.new('product1.txt', "w")
      read_file.each_line do |line|
        write_file.write(line) unless line.include? (num).to_s
      end
    read_file.close
    write_file.close
    Product.move_line(w_file,r_file)
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

  def edit(num,hash_1)
    var=""
    r_file="product.txt"
    w_file="product1.txt"
    read_file = File.open('product.txt', "r")
    write_file = File.new('product1.txt', "w")
      read_file.each_line do |line|
        result = line.split(" ").map(&:strip).to_a
        pro_id=result[0]
        unless pro_id == (num).to_s
          write_file.write(line)
        else
          hash_1.each_value { |value| var=(var.to_s)+" "+(value.to_s).chomp}
          write_file.puts var
        end
      end
    read_file.close
    write_file.close
    Product.move_line(w_file,r_file)
  end
end