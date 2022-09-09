class Solver
  def factorial(n)
    return 1 if(n < 2)
    n * factorial(n - 1)
  end

  def reverse(word)
    reversedWord = ''
    (word.length - 1).downto(0) { |i| reversedWord += word[i] }
    reversedWord
  end

  def fizzbuzz(n)
    return 'fizzbuzz' if n % 3 == 0 && n % 5 == 0
    return 'fizz' if n % 3 == 0
    return 'buzz' if n % 5 == 0
    return "#{n}"
  end
end
