class Solver
  def factorial(num)
    return 1 if num < 2

    num * factorial(num - 1)
  end

  def reverse(word)
    reversed_word = ''
    (word.length - 1).downto(0) { |i| reversed_word += word[i] }
    reversed_word
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    n.to_s
  end
end
