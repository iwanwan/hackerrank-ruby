require './src/staircase'

describe Staircase do
  describe '.print' do
    it 'print staircase of size n' do
      size = 4
      expected_result = [
        "   #",
        "  ##",
        " ###",
        "####"
      ]
      expect(Staircase.print(size)).to eq expected_result.join("\n")
    end
  end

  describe '.generate_string_from_char' do
    it 'returns a string with the contents of the desired number of characters' do
      size = 4
      char = "x"
      expect(Staircase.generate_string_from_char(size, char)).to eq(char * 4)
    end
  end
end
