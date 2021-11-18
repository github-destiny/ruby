# 普通方法的定义
# def method1(name = "zs")
#     puts "hello #{name}"
# end

# method1
# method1("ls")

# 可变长参数定义
# def method2(arg = "default", *name)
#     puts "Got #{arg} and #{name.join(", ")}"
# end

# method2
# method2("p1", 'p2', 'p3')

# block 与参数
# def method3(p1)
#     if block_given?
#         yield(p1)
#     else
#         p1
#     end
# end

# puts method3("no block")
# method3("parameter"){|p| puts p}

# &符号将传入的block转化为Proc对象，然后赋值给这个参数
# def method4(name, amount, &block)
#     "#{name} on #{amount} = #{block.call(amount)}"
# end

# puts method4("Sales tax", 100) {|amt| amt * 0.075}

# ruby中的拆解数组或者说是js中的解构赋值?
# def five(a, b, c, d, e)
#     "I was passed #{a} #{b} #{c} #{d} #{e}"
# end

# puts five(1, 2, 3, 4, 5)
# puts five(1, 2, 3, *['a', 'b'])
# puts five(*(10..14).to_a)

# print "(t)imes or (p)lus:"
# times = gets
# print "number:"
# number = Integer(gets)
# if times =~ /^t/
#     puts (1..10).collect{|n| n * number}.join(", ")
# else
#     puts (1..10).collect{|n| n + number}.join(", ")
# end

print "(t)imes or (p)lus:"
times = gets
print "number:"
number = Integer(gets)
if times =~ /^t/
    calc = lambda {|n| n * number}
else
    calc = lambda {|n| n + number}
end

puts (1..10).collect(&calc).join(", ")

