person = "Tim"
puts person.object_id
puts person.class
puts person

# 使用dup可以复制一个全新的对象赋值给新的引用
# person2 = person.dup
person2 = person
# 使用freeze冻结一个对象,被冻结的对象将不能再被操作
person.freeze
person[0] = 'J'
puts person
puts person2