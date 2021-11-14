# 使用ruby读取文件，使用do...end来定义block
# 但是这种定义方式的优先级低于{...}

# f = File.open('test')
# f.each do |line|
#     puts line
# end
# f.close

# inject方法用来进行统计
nums = [1,3,5,7]
puts nums.inject(0){|sum, element| sum + element}
