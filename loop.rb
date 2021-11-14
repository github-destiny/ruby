# if判断的一种简化写法
# i = gets.to_i
# puts "> 3000" if i > 3000

# while循环的一种简化写法
# square = 2
# square = square * square while square < 1000
# puts square

line = "Perl"
line = line.sub(/Perl/, 'Python')
if line =~ /Perl|Python/
    puts "This language is #{line}"
end

