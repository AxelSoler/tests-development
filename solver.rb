class Solver
  def factorial(val)
    return unless val > 1

    answer = 1
    (2..val).each do |i|
      answer *= i
    end
    answer
  end
end
