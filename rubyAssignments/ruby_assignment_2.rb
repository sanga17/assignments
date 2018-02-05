part 1

1.Print "Hello World" 10 times:
    string_1="Hello world"
    10.times do
    puts string_1
  end

2.Print number from 30 to 40
    (30..40).each do |i|
    puts i
    end

3.Comabine array_1 & array_2 and make elements it uniq:
    (array_1.concat(array_2)).uniq

4.Combine array_1 & array_2 and keep only even elements
    (array_1.concat(array_2)).keep_if { |v| v%2==0 }

5.Combine array_1 & array_2 and delete elements if greater than 8
    array_1.concat(array_2).delete_if {|v| v>8 }

6.array_1 make cubes of all elements and add them
   result=0
   array_1.each do |num|
    result +=num*num*num
   end
   puts result

7.Combine array_1 & array_2 and find index of '8'
   array_1.find_index { |a| a==8}

8.array_1: add 5 to each element
   array_1.replace

9.combine hash_1 & hash_2
   hash_1.merge(hash_2)

10.replace values of hash_1 with elements from array_1


11.Make sum of integer values of hash_2
   sum=0
   hash_2.each_value { |value| sum+=value.to_i}
   puts sum

12. Make upcase of all values of hash_1
    hash_1.each_value { |value| puts value.upcase }

