module MyEnumerable
  def _all

  end

  def _any
    self.each { |x| return true if yield(x) }
    false
  end

  def _filter

  end
end