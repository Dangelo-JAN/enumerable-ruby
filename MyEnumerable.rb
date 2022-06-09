module MyEnumerable
  def _all
    self.each { |x| return false unless yield(x) }
    true
  end

  def _any
    self.each { |x| return true if yield(x) }
    false
  end

  def _filter
    result = []
    self.each { |x| result << x if yield(x) }
    result
  end
end