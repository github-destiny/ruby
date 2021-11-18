# 使用[]存放对象，可以是任意类型
a = ['cat', 'dog', 'bird', 'duck', 'tigger']
puts a[0]
puts a[1]
puts a[5]
puts a
puts "-------------------------------"
# 可以使用%w{}形式创建数组，这样可以省去写引号，中间使用空格进行分割
b = %w{cat dog bird duck tigger}
puts b
puts "-------------------------------"
# 散列表，也就是map类型
hash_set = {
    # 相同键值的数据，先出现的数据将会被后出现的数据覆盖
    'name' => 'zs',
    'age'  => 18,
    'gender' => 'male',
    'name' => 'ls'
}
# 通过类似数组的方式获取散列表中的数据
# 如果没有该键对应的值，返回nil
puts hash_set['name']
puts "-------------------------------"
h = Hash.new(0)
puts h['k1']
h['k1'] = 1
puts h['k1']
puts "-------------------------------"



