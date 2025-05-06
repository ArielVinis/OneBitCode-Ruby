class Bar
    def foo
        $global = 0
        puts $global
    end
end

class Baz
    def qux
        $global += 1
        puts $global
    end
end

bar = Bar.new
baz = Baz.new

bar.foo # 0
baz.qux # 1
baz.qux # 2

puts "--------------------------------"

puts $global

$global = 123456

puts $global


