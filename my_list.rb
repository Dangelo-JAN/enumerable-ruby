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
