require './plus_minus'

describe PlusMinus do
  describe ".count" do
    it 'return 3 lines, representing of the fraction of positive number, negative number and zero number in the array compared to its size' do
      size    = 6
      numbers = [-4, 3, -9, 0, 4, 1]
      results = PlusMinus.count(size, numbers)
      expect(results).to eq("0.500000\n0.333333\n0.166667\n")
    end
  end
end
