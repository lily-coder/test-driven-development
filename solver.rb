class Solver
  def factorial(num)
    raise StandardError, 'Please input numbers starting from zero or positive integers only' if num.negative?

    result = 1

    while num.positive?
      result *= num
      num -= 1
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    div_one = num.modulo(3).zero?
    div_two = num.modulo(5).zero?

    if div_one && div_two
      'fizzbuzz'
    elsif div_two
      'buzz'
    elsif div_one
      'fizz'
    else
      num.to_s
    end
  end
end
