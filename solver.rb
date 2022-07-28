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

  def reverse(str)
    raise StandardError, 'String values only' unless str.is_a? String

    str.chars.reverse.join
  end

  def fizzbuzz(int)
    if (int % 15).zero?
      'fizzbuzz'
    elsif (int % 5).zero?
      'buzz'
    elsif (int % 3).zero?
      'fizz'
    else
      int.to_s
    end
  end
end
