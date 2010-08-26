# START:each_permutation
class Array
  # Calls the attached block of code once for each permutation.
  def each_permutation(&block)
    # We'll need to permute the array L! times.
    factorial = (1..length).inject(1) { |p, n| p * n }

    # Make a copy, so we don't modify the original array.
    copy = clone
    block.call copy

    (factorial - 1).times do
      copy.permute!
      block.call copy
    end
  end
end
# END:each_permutation

# START:permute
class Array
  # Generate one permutation by Dijkstra's algorithm.
  def permute!
    i = length - 1

    i -= 1 while at(i - 1) >= at(i)
    j = length
    j -= 1 while at(j - 1) <= at(i - 1)

    swap(i - 1, j - 1)

    i += 1
    j = length

    while i < j
      swap(i - 1, j - 1)
      i += 1
      j -= 1
    end
  end

  def swap(a, b)
    self[a], self[b] = [self[b], self[a]]
  end
end
# END:permute


# START:benchmark
require 'benchmark'

def do_something_with(data)
  # Your favorite operation here
end

5.times do
  timing = Benchmark.measure do
    letters = ['f', 'a', 'c', 'e', 't', 's']
    letters.each_permutation do |p|
      do_something_with(p)
    end
  end

  puts timing
end
# END:benchmark
