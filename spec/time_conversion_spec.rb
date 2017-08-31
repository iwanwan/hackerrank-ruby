require './src/time_conversion'

describe TimeConversion do
  describe 'convert' do
    context 'when input valid' do
      it 'convert given time in 24 hour format' do
        time = '07:05:45PM'
        expect(TimeConversion.convert(time)).to eq('19:05:45')

        time = '12:05:45PM'
        expect(TimeConversion.convert(time)).to eq('12:05:45')

        time = '07:05:45AM'
        expect(TimeConversion.convert(time)).to eq('07:05:45')

        time = '12:05:45AM'
        expect(TimeConversion.convert(time)).to eq('00:05:45')
      end
    end

    context 'when input not valid' do
      it 'return empty' do
        time = '07 05 45AM'
        expect(TimeConversion.convert(time)).to eq('')

        time = '07:05'
        expect(TimeConversion.convert(time)).to eq('')
      end
    end
  end

  describe '.valid_hour' do
    context 'when hour is valid' do
      it 'return hour' do
        rand_a = '0' + rand(0..9).to_s
        rand_b = rand(10..12).to_s
        expect(TimeConversion.valid_hour(rand_a)).to eq(rand_a)
        expect(TimeConversion.valid_hour(rand_b)).to eq(rand_b)
      end
    end

    context 'when hour is not valid' do
      it 'return empty' do
        rand_a = '0' + rand(13..20).to_s
        rand_b = rand(20..100).to_s
        expect(TimeConversion.valid_hour(rand_a)).to eq('')
        expect(TimeConversion.valid_hour(rand_b)).to eq('')
      end
    end
  end

  describe '.valid_min_or_sec' do
    context 'when valid' do
      it 'return value' do
        rand_a = '0' + rand(0..9).to_s
        rand_b = rand(10..59).to_s
        expect(TimeConversion.valid_min_or_sec(rand_a)).to eq(rand_a)
        expect(TimeConversion.valid_min_or_sec(rand_b)).to eq(rand_b)
      end
    end

    context 'when not valid' do
      it 'return empty' do
        rand_a = '0' + rand(60..100).to_s
        expect(TimeConversion.valid_min_or_sec(rand_a)).to eq('')
      end
    end
  end

  describe '.parse_am_pm' do
    context 'when value valid' do
      it 'return array match' do
        expect(TimeConversion.parse_am_pm('01PM').size).to eq(3)
      end
    end

    context 'when value not valid' do
      it 'return empty array' do
        expect(TimeConversion.parse_am_pm('01XM').size).to eq(0)
      end
    end
  end
end
