# frozen_string_literal: true

require 'set'
@pairs = []
@pair = []

def clean(arr, sum)
  n = 0
  arr.each do
    if arr[n] > sum
      arr.delete_at(n)
    else
      n += 1
    end
  end
end

def pair_sum(arr, sum)
  clean(arr, sum)
  n = 0
  m = 1
  loop do
    if m == arr.length
      n += 1
      m = n + 1
    end

    break if n == arr.length

    if arr[n] + arr[m] == sum
      @pairs << [arr[n], arr[m]].sort
      arr.delete_at(n)
      arr.delete_at(m - 1)
      m = n + 1
    else
      m += 1
    end
  end
  p "#{@pairs.to_set.length} paires :"
  @pairs.to_set.to_a
end

p pair_sum([1, 3, 5, 2, 3, 1, 6, 3, 8, 2, 3, 2, 2], 4)
