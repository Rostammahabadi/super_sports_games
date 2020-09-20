class StandardDeviation
  def initialize(ages)
    @ages = ages
  end

  def standard_deviation
    # Your code here for calculating the standard deviation
    sum = @ages.inject(:+)
    num_of_int = @ages.length.to_f
    average = sum/num_of_int
    subtraction = @ages.map do |age|
      (age-average).round(2)
    end
    squared = subtraction.map do |num|
      (num*num).round(2)
    end
    summed = squared.inject(:+)
    division = summed/num_of_int
    result = Math.sqrt(division).round(2)
    # When you find the standard deviation, print it out
    result
  end
end
