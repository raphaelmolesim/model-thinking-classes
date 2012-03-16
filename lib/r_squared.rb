class RSquared

  attr_accessor :categories
  
  def initialize(values)
    @values = values.collect {|value| value.to_f }
  end

  def total_variation
    cached_mean = @values.mean
    p @values.collect { |value| variation(value, cached_mean) }.sum.round
  end
  
  def categorize *categories
    @categories = []
    categories.each do |category|
      @categories << RSquared.new(category)
    end
  end
  
  def explained_variation
    categories_variation = @categories.collect { |category| category.total_variation }.sum
     p(( 1 - (categories_variation / total_variation) ) * 100)
  end
  
  private
    def variation value, mean_value
      (value - mean_value).abs**2
    end
    
    def p number
      ("%.2f" % number).to_f
    end
end