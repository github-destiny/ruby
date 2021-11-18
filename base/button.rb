class Button
    def initialize(lable)
        @lable = lable
    end
end

class JukeboxButton < Button
    # &action参数，调用该方法时，ruby会寻找一个block，通过call方法执行传入的block
    def initialize(lable, &action)
        super(lable)
        @action = action
    end

    def button_pressed
        @action.call(self)
    end
end

start_button = JukeboxButton.new("Start") {puts "start..."}
pause_button = JukeboxButton.new("Pause") {puts "pause..."}

start_button.button_pressed
pause_button.button_pressed

def n_times(thing)
    return lambda {|n| thing * n}
end

p1 = n_times("Hello;")
puts p1.call(3)