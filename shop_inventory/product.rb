require_relative 'file_operation'
class Product
  def add(hash_1,input_f="product.txt")
    file_operation_obj = File_operation.new
    input_file=input_f
    file_operation_obj.add(hash_1)
  end

  def self.list
    File.open("product.txt", "r") do |f|
      f.each_line do |line|
        puts line
      end
    end
  end

  def search(num=1)
    file_operation_obj = File_operation.new
    file_operation_obj.search(num)
  end

  def remove(num=2)
    file_operation_obj = File_operation.new
    file_operation_obj.remove(num)
  end

  def edit(num,hash_1)
    file_operation_obj = File_operation.new
    file_operation_obj.remove(num,hash_1)
  end
end