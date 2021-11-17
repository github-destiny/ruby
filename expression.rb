# 可以使用%x{}或者反引号形式来调用系统命令
# puts %x{echo "hello world"}

# <=>用来对两个值进行比较 相当于使用前一个值减去后一个值的结果 大于为1 等于为0 小于-1
# a = 10
# line = gets
# line = line.to_i
# puts line <=> a

line = gets.to_i
# 使用then可以使结构紧凑
# 说是还可以使用:代替then，但是测试发现可能有问题，估计是我没写对
# if line =~ /^a[b-d]s$/ then puts line
# else puts "other"
# end

# 当输入不满足条件时，执行unless语句
# unless line < 10
#     puts "> 10"
# else
#     puts "< 10"
# end

# case相当于if 通过when关键字使用 通过结构与if类似 因此也可以使用then或者:
# year = gets.to_i
# leap = case
# when year % 400 == 0 then true
# when year % 100 == 0 then false
# else year % 4 == 0
# end
# puts leap


while line = gets
    puts line
    if line === "quit\n" or line === "exit\n"
        break
    end
end