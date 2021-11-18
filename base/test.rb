# 使用ruby读取文件，使用do...end来定义block
# 但是这种定义方式的优先级低于{...}

# f = File.open('test')
# f.each do |line|
#     puts line
# end
# f.close

# inject方法用来进行统计
# 在执行inject方法时，会将inject方法的参数传递进block中的第一个参数
# 在这里体现为sum = 0，element则自动获取数组的第一个元素
nums = [1,3,5,7]
puts nums.inject(0){|sum, element| sum + element}
puts nums.inject(1) {|product, element| product * element}
