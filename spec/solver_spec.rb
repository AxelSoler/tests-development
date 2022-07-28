# Your spec stuff goes here...
require_relative '../solver'

describe Solver do
  solver = Solver.new
  context 'When testing the solver class' do
    it 'expect the class solver to exist' do
      expect(solver).to be_truthy
    end
  end
end
