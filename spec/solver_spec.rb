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
  # context 'When testing the reverse method' do
  #   it 'should contain an @status instance variable equal to "Creatd"' do
  #     app = App.new
  #     expect(app.status).to eq 'Created'
  #   end
  # end
  # context 'When testing the fizzbuzz method' do
  #   it 'should contain an @status instance variable equal to "Creatd"' do
  #     app = App.new
  #     expect(app.status).to eq 'Created'
  #   end
  # end
end
