class MinMaxSum
  def self.count(numbers)
    sum_of_numbers = []
    for i in 0..(numbers.size-1)
      array_of_numbers  = delete(numbers, i)
      sum_of_numbers[i] = sum_array(array_of_numbers)
    end

    [min_in_array(sum_of_numbers), max_in_array(sum_of_numbers)].join(" ")
  end

  def self.delete(numbers, index)
    numbers.reject.with_index{ |value, i|  i == index }
  end

  def self.sum_array(numbers)
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end

  def self.min_in_array(numbers)
    min = nil
    numbers.each do |number|
      min = number if min.nil?
      if min >= number
        min = number
      end
    end
    min
  end

  def self.max_in_array(numbers)
    max = nil
    numbers.each do |number|
      max = number if max.nil?
      if max <= number
        max = number
      end
    end
    max
  end
end
