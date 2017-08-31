require './src/min_max_sum'

describe MinMaxSum do
  describe '.count' do
    it 'return min max sum' do
      numbers = [1, 2, 3, 4, 5]
      expect(MinMaxSum.count(numbers)).to eq("10 14")
    end

    it 'return min max sum' do
      numbers = [5, 5, 5, 5, 5]
      expect(MinMaxSum.count(numbers)).to eq("20 20")
    end
  end

  describe '.delete' do
    it 'remove value in index' do
      numbers = [1, 2, 3, 4, 5]
      expect(MinMaxSum.delete(numbers, 2)).to eq [1, 2, 4, 5]
    end
  end

  describe '.sum_array' do
    it 'sum value of array' do
      numbers = [1, 2, 3, 4]
      expect(MinMaxSum.sum_array(numbers)).to eq(10)
    end
  end

  describe '.min_in_array' do
    it 'search minimal value in array' do
      numbers = [1, 2, 3, 4].shuffle
      expect(MinMaxSum.min_in_array(numbers)).to eq(1)
    end

    context "when array value equal" do
      it 'return correct number' do
        numbers = [5, 5, 5, 5].shuffle
        expect(MinMaxSum.min_in_array(numbers)).to eq(5)
      end
    end
  end

  describe '.max_in_array' do
    it 'search max value in array' do
      numbers = [1, 2, 3, 4].shuffle
      expect(MinMaxSum.max_in_array(numbers)).to eq(4)
    end

    context "when array value equal" do
      it 'return correct number' do
        numbers = [5, 5, 5, 5].shuffle
        expect(MinMaxSum.max_in_array(numbers)).to eq(5)
      end
    end
  end
end
