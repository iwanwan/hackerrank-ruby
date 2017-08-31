class BirthdayCakeCandles
  def self.count(size, candles)
    max = self.find_max(candles)
    number_of_value_in_candles(candles, max)
  end

  def self.find_max(candles)
    max = nil
    candles.each do |candle|
      max = candle if max.nil?
      if max < candle
        max = candle
      end
    end
    max
  end

  def self.number_of_value_in_candles(candles, value)
    count = 0
    candles.each do |candle|
      if candle == value
        count += 1
      end
    end
    count
  end
end
