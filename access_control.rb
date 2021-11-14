class MyClass
    def initialize
    end

    # public
    #     def method1
    #         puts "method1"
    #     end

    # private
    #     def method2
    #         puts "method2"
    #     end

    # protected
    #     def method3
    #         puts "method3"
    #     end

    def method1
        puts "method1"
    end

    def method2
        puts "method2"
    end

    def method3
        puts "method3"
    end

    # 执行顺序从上到下,没有变量提升
    public :method1
    protected :method2
    private :method3
end

c = MyClass.new
c.method1
# 私有方法与受保护方法都不能在本类中访问
# c.method2
# c.method3