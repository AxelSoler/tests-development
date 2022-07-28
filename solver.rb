class Solver
  def factorial(val)
    raise StandardError, 'Integer values only' if val.is_a? Float

    if val > 1
      answer = 1
      (2..val).each do |i|
        answer *= i
      end
      answer
    elsif [0, 1].include? val
      1
    elsif val.negative?
      raise StandardError, 'Positive values only'
    end
  end
end
