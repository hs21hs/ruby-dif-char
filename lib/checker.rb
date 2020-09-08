class Checker
  def differ_by_one(string1, string2)
    if string1.length != string2.length
      raise ArgumentError, 'strings are not equal in length' 
    end

    arrayOfChars1 = string1.downcase.split('')
    arrayOfChars2 = string2.downcase.split('')
  
    hashCounter = incrementAndConvertToHashTable(arrayOfChars1)
    # hashCounter will store each letter in the string as its key, 
    # and the number of occurences of that letter as its value 

    differences = decrementAndReturnDifferences(hashCounter, arrayOfChars2)
    #differences will be found by comparing hashCounter with the second string

    if differences === 1
      return true
    else
      return false
    end
  end

  def incrementAndConvertToHashTable(arrayOfChars)
    counter = 0
    hash = {}

    while counter < arrayOfChars.length 
      if !hash[arrayOfChars[counter]]
        hash[arrayOfChars[counter]] = 1
      else
        hash[arrayOfChars[counter]] += 1
      end
      counter += 1
    end

    return hash
  end

  def decrementAndReturnDifferences(hash, arrayOfChars)
    #function will stop checking if 2 differences are found

    counter = 0
    differences = 0
    
    while counter < arrayOfChars.length && differences < 2
      if hash[arrayOfChars[counter]] && hash[arrayOfChars[counter]] > 0
        hash[arrayOfChars[counter]] -= 1
      else 
        differences += 1
      end
      counter += 1
    end

    return differences
  end
end

#puts Checker.new.differ_by_one('dog','edo')