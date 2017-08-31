require './src/birthday_cake_candles'

describe BirthdayCakeCandles do
  describe '.count' do
    it 'return the number of candles she can successfully blow out' do
      size    = 4
      candles = [3, 2, 1, 3]
      expect(BirthdayCakeCandles.count(size, candles)).to eq(2)

      size    = 4
      candles = [3, 2, 1, 4]
      expect(BirthdayCakeCandles.count(size, candles)).to eq(1)

      size    = 4
      candles = [5, 5, 5, 4]
      expect(BirthdayCakeCandles.count(size, candles)).to eq(3)
    end

  end

  describe '.find_max' do
    it 'return max value in array' do
      candles = [3, 2, 1, 4]
      expect(BirthdayCakeCandles.find_max(candles)).to eq(4)

      candles = [5, 2, 1, 4]
      expect(BirthdayCakeCandles.find_max(candles)).to eq(5)
    end
  end

  describe '.number_of_value_in_candles' do
    it 'return number of value in candles' do
      candles = [4, 3, 2, 1, 4]

      expect(BirthdayCakeCandles.number_of_value_in_candles(candles, 4)).to eq(2)
      expect(BirthdayCakeCandles.number_of_value_in_candles(candles, 3)).to eq(1)
    end
  end
end
