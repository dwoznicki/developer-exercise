class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)

    split = str.split(" ").map do |word|
      word.split(/([?!.])/)
    end

    marklared = split.map do |word|
      if word[0].length > 4
        if word[0] == word[0].capitalize
          word[0] = "Marklar"
        else
          word[0] = "marklar"
        end
      else
        word[0]
      end
      word.join("")
    end

    return marklared.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return nth if nth == 0

    sequence = []
    a = 0
    b = 1
    nth.times do
      sequence << b
      c = a + b
      a = b
      b = c
    end
    
    return sequence.reduce(0) do |sum, n|
      n.even? ? sum + n : sum
    end
  end
  
end
