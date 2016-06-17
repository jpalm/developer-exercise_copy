class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str_arr = str.split
    str_arr.each do |word|
      punc = nil
      if word.length > 4
        punc = word[-1,1] if word.match(/\W\z/) # check for punctuation at end of word
        if /[A-Z]/.match(word[0,1]) # check for capitalization        
          word.replace("Marklar") 
        else
          word.replace("marklar") 
        end
        word.replace(word+punc) if punc
      end
    end
    str_arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    first = 0
    second = 1
    sum = 0
    i = 1
    while (i <= nth) do
      sum += second if second.even? # accumulate sum of even numbers
      temp = second # hold val of second
      second = first + second # second is sum of last two items on stack
      first = temp # first is now the previous last item on stack
      i += 1
    end
    sum
  end
end

