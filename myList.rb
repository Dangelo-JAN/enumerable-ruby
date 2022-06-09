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

my_list = MyList.new([1,2,3,4,5])
p my_list._any { |e| e < 5 }
p my_list._any { |e| e > 5 }
