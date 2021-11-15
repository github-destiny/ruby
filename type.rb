# Integer类型，书上说存在Fixnum和Bignum两种，但ruby3.0版本输出的是Integer
# num = 81
# 6.times do
#     puts "#{num.class} : #{num}"
#     num = num * num
# end

# 所有数字都是对象
# .times方法可以传递一个block，默认意思为执行三次 输出0 1 2 
# 3.times{|i| puts i}
# upto方法具有一个参数，意为从某个数字加到参数的数字 可以传递一个block
# 3.upto(10) {|i| puts i}
# downto 意为从该数字减小到参数数字 可以传递一个block
# 99.downto(90) {|i| puts i}
# step：以某个步长加到目标值 可以传递block
# 50.step(80, 5) {|i| puts i}

# #{}中可以放置表达式甚至是一个函数
# puts "now is #{
#     def the(a)
#         'the ' + a
#     end
#     the('time')
# } for all good coders..."

# 可以使用%q/expr/, %Q!expr!, %Q{expr}定义字符串

# 可以使用here document方式来定义字符串，类似模板字符串
# 可以将字符串的模板样式同时输出
# string = << 结束字符串
string = <<END_OF_STRING
line1
    line2
        line3
    line4
        line5 '<<'
END_OF_STRING

puts string