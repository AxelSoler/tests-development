# Your spec stuff goes here...
require_relative '../solver'

describe Solver do
  solver = Solver.new

  context 'When testing the solver class' do
    it 'expect the class solver to exist' do
      expect(solver).to be_truthy
    end
  end

  context 'When testing the factorial method' do
    it 'should return the factorial of 3' do
      answer = solver.factorial(3)
      expect(answer).to eq 6
    end
    it 'should return the factorial of 0' do
      answer = solver.factorial(0)
      expect(answer).to eq 1
    end
    it 'the factorial of -4 should raise an exception' do
      expect { solver.factorial(-4) }.to raise_error('Positive values only')
    end
    it 'the factorial of 3.14 should return an exception' do
      expect { solver.factorial(3.14) }.to raise_error('Integer values only')
    end
  end

  context 'When testing the reverse method' do
    it 'return a string in reverse order' do
      expect(solver.reverse('word')).to eq 'drow'
    end
    it 'raise an exception if the input is not a string' do
      expect { solver.reverse(3) }.to raise_error('String values only')
    end
  end

  context 'When testing the fizzbuzz method' do
    it 'should return fizz if the input is a multiple of 3' do
      expect(solver.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return buzz if the input is a multiple of 5' do
      expect(solver.fizzbuzz(10)).to eq 'buzz'
    end
    it 'should return fizz if the input is a multiple of 3 and 5' do
      expect(solver.fizzbuzz(45)).to eq 'fizzbuzz'
    end
    it 'should return N if the input is otherwise' do
      expect(solver.fizzbuzz(17)).to eq '17'
    end
  end
end
