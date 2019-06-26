def anagram(string1,string2)
    arr1 = []
    arr2 = []

    string1.split("").each do |letter|
        arr1 << letter.downcase 
    end

    string2.split("").each do |letter|
        arr2 << letter.downcase 
    end

    arr1.each do |letter| 
        if arr2.include?(letter)
            arr2.delete(letter)
        end           
    end

    if arr2.length == 0
        return true
    else 
        return false
    end
end

p anagram('dog','god')