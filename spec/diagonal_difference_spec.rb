require './src/diagonal_difference'

describe DiagonalDifference do
  describe '.count' do
    it 'return absolute value of difference' do
      size = 3
      matrix = [
        [11,  2,   4],
        [ 4,  5,   6],
        [10,  8, -12]
      ]

      expect(DiagonalDifference.count(size, matrix)).to eq(15)
    end
  end
end
