require 'csv'
filename = "water_bottles.csv"
headers = CSV.read(filename,skip_blanks: true, headers: true).headers
result = CSV.readlines(filename) [1 .. -1].reject { |row| row.all?(&:nil?) }
headers = headers.reject { |e| e.to_s.empty? }
result = result.each {|s| s.compact!}
symbols = []
headers.each { |string| symbols.push(string.to_sym) }
name = filename.gsub(/_/,'')
name1 = name.slice(0..(name.index('.')))
name =name1.gsub(/s./, '').capitalize
attributes = symbols
class MyBaseClass; end
klass = Class.new(MyBaseClass) do
  ATTRIBUTES = attributes
  attr_accessor *ATTRIBUTES
  def initialize(args)
    p args
    raise ArgumentError, "Too many arguments" if args.size > ATTRIBUTES.size
    ATTRIBUTES.zip(args) do |attr, val|
      send "#{attr}=", val
    end
  end
end
obj =Object.const_set name, klass
obj.class
# name1 = klass.new(headers)
# puts name1.inspect
name1 =name+'_'+"obj".downcase
result.each do |result1|
  symbols = []
  result1.each { |string| symbols.push(string.to_sym) }
  name1 = klass.new(symbols)
   puts name1.inspect
  end
#<Waterbottle:0x00000001f8eb60>
#<Waterbottle:0x00000001f8e2f0>
