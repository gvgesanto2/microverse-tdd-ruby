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
      expect(result).to eq 362880
    end
    it 'should return 3,628,800 for the factorial of 10' do
      result = @solver.factorial(10)
      expect(result).to eq 3628800
    end
  end

  context 'When testing the reverse() method' do
    it 'should be able to return the reverse word' do
      expect(@solver.reverse('testing')).to eq 'gnitset'
      expect(@solver.reverse('hello')).to eq 'olleh'
      expect(@solver.reverse('')).to eq ''
    end
  end
end
