# frozen_string_literal: true

@arr1 = []
@arr2 = []
def clean(st1, st2)
  st1.delete(' ').split('').each do |letter|
    @arr1 << letter.downcase
  end

  st2.delete(' ').split('').each do |letter|
    @arr2 << letter.downcase
  end
end

def anagram(st1, st2)
  clean(st1, st2)

  @arr1.each do |l1|
    n = 0
    m = 0
    @arr2.each do |l2|
      if l1 == l2
        @arr2.delete_at(n)
        m = 1
        break
      else
        n += 1
      end
    end
    return false if m.zero?
  end

  left(@arr2)
end

def left(array)
  if array.empty?
    true
  else
    false
  end
end

p anagram('d o       g', 'g    d o')
