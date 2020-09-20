require './lib/standard_deviation'
class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum = @ages.sum
    count = @ages.length.to_f
    (sum/count).round(2)
  end

  def standard_deviation
    StandardDeviation.new(@ages).standard_deviation
  end
end
