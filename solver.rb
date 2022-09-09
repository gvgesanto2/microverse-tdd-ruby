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
end
