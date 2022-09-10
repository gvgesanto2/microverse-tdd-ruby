require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'When testing the factorial() method' do
    it 'should return 1 for the factorial of 0' do
      result = @solver.factorial(0)
      expect(result).to eq 1
    end
    it 'should return 362,880 for the factorial of 9' do
      result = @solver.factorial(9)
      expect(result).to eq 362_880
    end
    it 'should return 3,628,800 for the factorial of 10' do
      result = @solver.factorial(10)
      expect(result).to eq 3_628_800
    end
  end

  context 'When testing the reverse() method' do
    it 'should be able to return the reverse word' do
      expect(@solver.reverse('testing')).to eq 'gnitset'
      expect(@solver.reverse('hello')).to eq 'olleh'
      expect(@solver.reverse('')).to eq ''
    end
  end

  context 'When testing the fizzbuzz() method' do
    it 'should return "fizz" when the parameter "num" is divisible by 3' do
      result = @solver.fizzbuzz(3)
      expect(result).to eq 'fizz'
    end

    it 'should return "buzz" when the parameter "num" is divisible by 5' do
      result = @solver.fizzbuzz(5)
      expect(result).to eq 'buzz'
    end

    it 'should return "fizzbuzz" when the parameter "num" is divisible by 3 AND 5' do
      result = @solver.fizzbuzz(15)
      expect(result).to eq 'fizzbuzz'
    end

    it 'should return the parameter "num" as a string when "num" is NOT divisible by 3 NOR 5' do
      n = 17
      result = @solver.fizzbuzz(n)
      expect(result).to eq n.to_s
    end
  end
end
