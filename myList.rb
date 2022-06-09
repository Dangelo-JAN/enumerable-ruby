require_relative ('MyEnumerable.rb')

class MyList
    include MyEnumerable
    def initialize(list)
        @list = list
    end

    def each
      @list.each { |x| yield(x) } if block_given?
    end
end

# New Class my_list
my_list = MyList.new([1,2,3,4])

# Test _any method
p my_list._any { |e| e == 2 }
p my_list._any { |e| e == 5 }

# Test _all method
p my_list._all { |e| e < 5 }
p my_list._all { |e| e > 5 }

# Test _filter method
p my_list._filter { |e| e.even? }
