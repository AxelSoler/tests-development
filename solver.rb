class Solver
  def factorial(val)
    if val > 1
      answer = 1
      (2..val).each do |i|
        answer *= i
      end
      answer
    elsif [0, 1].include? val
      1
    elsif val < 0
      raise StandardError.new 'Positive values only'
    end
  end
end
