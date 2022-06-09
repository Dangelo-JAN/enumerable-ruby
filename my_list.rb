require_relative('my_enumerable')

class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each do |x|
      block.call(x)
    end
  end
end

# for make a test undo comments

# New Class my_list
# my_list = MyList.new([1, 2, 3, 4])

# Test _any method
# puts my_list._any { |e| e == 2 }
# p my_list._any { |e| e == 5 }

# Test _all method
# p my_list._all { |e| e < 5 }
# p my_list._all { |e| e > 5 }

# Test _filter method
# p my_list._filter { |e| e.even? }
