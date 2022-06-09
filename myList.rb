class MyList
    def initialize(list)
        @list = list
    end

    def each
        yield ( @list ) if block_given?
    end
end