# names = %w{zhangsan lisi wangwu zhaoliu}
# 迭代器应该使用{}而不是()
# names.each{|name| puts name}

# 使用[]定义一个数组，同时数组的内容可以随意，不用考虑类型
# arr = ['zs', 16, '男', 175.4]

# 通过.class查看类型，通过.length查看长度
# puts arr.class
# puts arr.length
# puts arr

# 通过Array类创建的实例也是数组对象，new出来的是一个空数组
# b = Array.new
# 不必担心越界问题
# b[0] = 1
# b[1] = 'a'
# 未被赋值的中间部分会被附默认值nil
# b[4] = 'b'
# puts b

names = %w{zhangsan lisi wangwu zhaoliu}
# 支持负数索引，负数将会从末尾开始计算
# puts names[-1] -> zhaoliu
# 支持切片操作，使用一个范围获取数组中的元素，左闭右开
# puts names[0, 3]
# 使用索引选择范围 [..]左闭右闭
# puts names[1..2] lisi wangwu
# [...]左闭右开
puts names[1...2]

