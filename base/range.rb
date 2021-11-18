# range = 1..10
# # include?() 判断区间是否包含
# puts range.include?(11)
# # 最小值与最大值
# puts range.min
# puts range.max
# # 统计
# puts range.inject(0){|sum, i| sum += i}
# # 去除block条件的内容
# puts range.reject{|i| i < 5}
# # 遍历
# range.each{|i| puts i}

# char_range = 'a'..'z'
# char_range.each{|c| puts c}
# word_range = 'bar'..'baz'
# word_range.each{|w| puts w}

while line = gets
    print line if line =~ /start/.. line =~ /end/
end
