def fib_up_max(max)
    i1, i2 = 1, 1
    while i1 < max
        yield i1
        i1, i2 = i2, i1 + i2
    end
end

# block可以传递参数
# fib_up_max(1000){|f| print f , " "}

chars = ['H', 'A', 'L']
puts chars.collect{|x| x.succ}