def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end

call_block {puts "In the block"}

puts "interator----------------->"
a = %w{cat dog duck fish bird}
# puts a
a.each{|animal| puts animal}

['cat', 'dog', 'bird', 'duck', 'tigger'].each{|name| print name, " "}
5.times {print "*"}
3.upto(6){|i| print i}
('a'..'e').each{|char| print char}