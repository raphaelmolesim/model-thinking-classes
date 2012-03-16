class Array
  def sum
    self.inject(0) { |r, value| r += value }
  end

  def mean
    self.sum / self.size
  end
end