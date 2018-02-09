# class MethodCaller
#   def initialize(foo)
#     @foo = foo
#   end

#   def perform(action)
#     @foo.send action
#   end
# end

# puts "enter integer no to convert in float"
# $var = (gets)
# method_caller = MethodCaller.new($var)
# $var1=method_caller.perform("to_i")
# $var1=method_caller.perform("to_f")
# puts $var1

# class Friend
#   def initialize(friend="shubham")
#     @friend = friend
#   end

#   private
#   def all
#      puts @friend
#   end
# end

# new_friend = Friend.new
# # new_friend.all
# new_friend.send(:all)

# class Notification
#   # %w{ create update delete truncate }.each do |action|
#   action="create"
#     define_method("emit_#{action}".gsub(/e$/, 'ed')) do |something|
#       "#{action} is performed on #{something.class}"

#   end
# end

# notification = Notification.new
# puts notification.emit_created "user"
# # create is performed on User
# # puts notification.emit_deleted [20,30]
# # puts notification.emit_truncated 30

# class Timeline
#   attr_reader :tweets
#   alias_method :contents, :tweets

#   def initialize(tweets = [20,30])
#     @tweets = tweets
#     p "before aliasing: #{@tweets}"
#     p "after aliasing: #{contents}"
#   end
# end

# timeline = Timeline.new

# class A
#     def x
#         puts "x from A class"
#     end
# end

# class B < A
#     def x
#         puts "x from B Class"
#     end
#     # undef_method :x
#     remove_method :x
# end

# obj = B.new
# obj.x
# result: undefined methodx' for # (NoMethodError)

# klass = Object.const_get('String')
# obj = klass.new
# p obj.length

# class String
#   def write_size
#     self.size
#   end
# end
# size_writer = "Tell me my size!"
# puts size_writer.write_size

# class Person
# end
# Person.class_eval do
#   def say_hello
#     p "Hello!"
#   end
# end
# jimmy = Person.new
# jimmy.say_hello # "Hello!"



# class Person
# end

# Person.instance_eval do
#   def human?
#    p true
#   end
# end

# Person.human? # true


# class Greeting
#   def method_missing(sym, *args,#&block)
#     puts "#{sym} was called with #{args} and #{block.call}"
#   end
# end

# Greeting.new.hello("world") #{ p "bye!" }

require "csv"

last = ""

CSV.foreach("water_bottles.csv") do |row|
   if  row[-1] == nil || row[-1].empty?
     row[-1] = last
   else
     last = row[-1]
   end

   p row
end
