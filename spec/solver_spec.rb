require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    context '0 and positive integers' do
      it 'should return 1 when N is 0' do
        result = @solver.factorial 0
        expect(result).to eq(1)
      end

      it 'Returns all integers multiplication to number n' do
        result = @solver.factorial 5
        expect(result).to eq(1 * 2 * 3 * 4 * 5)
      end
    end

    context 'negative integers' do
      it 'returns an exception' do
        expect { @solver.factorial(-5) }.to raise_exception an_instance_of(StandardError)
          .and(having_attributes({ 'message' => 'Please input numbers starting from zero or positive integers only' }))
      end
    end
  end

  describe '#reverse' do
    it 'Returns the reverse word' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    context 'when N is divisible by 3' do
      it 'Returns fizz' do
        expect(@solver.fizzbuzz(3)).to eq 'fizz'
      end
    end

    context 'when N is divisible by 5' do
      it 'Returns buzz' do
        expect(@solver.fizzbuzz(5)).to eq 'buzz'
      end
    end

    context 'when N is divisible by 3 and 5' do
      it 'Returns fizzbuzz' do
        expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      end
    end

    context 'any other case' do
      it 'returns N as a string' do
        expect(@solver.fizzbuzz(7)).to eq '7'
      end
    end
  end
end
