def show_regexp(a, re)
    if a =~ re
        # $`得到匹配字符串之前的那部分
        # $&得到匹配字符串
        # $'得到匹配字符串之后的那部分
        "#{$`}<<#{$&}>>#{$'}"
    else
        "no match"
    end
end

puts show_regexp("very interesting", /t/)
puts show_regexp("Fats Waller", /a/)
puts show_regexp("Fats Waller", /ll/)
puts show_regexp("Fats Waller", /z/)