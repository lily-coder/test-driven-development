class Solver
    def factorial(n)
      raise StandardError, 'Please input numbers starting from zero or positive integers only' if n.negative?
  
      result = 1
  
      while n.positive?
        result *= n
        n -= 1
      end
  
      result
    end
  
    def reverse(word)
      word.reverse
    end
  
    def fizzbuzz(n)
      div_one = n.modulo(3).zero?
      div_two = n.modulo(5).zero?
  
      if div_one && div_two
        'fizzbuzz'
      elsif div_two
        'buzz'
      elsif div_one
        'fizz'
      else
        n.to_s
      end
    end
  end