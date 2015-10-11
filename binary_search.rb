# Binary search 

def do_search(array, num)
  min = 0
  max = array.length - 1
  guesses = 0
  
  while max >= min do  
    guess = min + (max - min) / 2
    guesses += 1

    if array[guess] == num
      return "#{num} is at index #{guess} in array. #{guesses} guesses needed to find it."
    elsif array[guess] < num
      min = guess + 1
    else
      max = guess - 1
    end
  end
  "#{num} is not present in array."
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

puts do_search(primes, 37)
puts do_search(primes, 12)

